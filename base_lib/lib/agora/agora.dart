import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:baselib/api/url/bees.dart';
import 'package:baselib/app.dart';
import 'package:baselib/common/http/result_body.dart';
import 'package:baselib/domain/account.dart';
import 'package:baselib/proto/user_message.pb.dart';

class AgoraGlobal {
  static AgoraGlobal get instance => _getInstance();
  static AgoraGlobal _instance;

  AgoraGlobal._internal() {}

  static AgoraGlobal _getInstance() {
    if (_instance == null) {
      _instance = AgoraGlobal._internal();
    }
    return _instance;
  }

  //频道状态
  State state = State.idle;

  List<AudioVolumeIndication> audioVolumeIndications = [];

  //初始化声网
  void init() {
    AgoraRtcEngine.create(App.agoraAppKey);
    //暂时禁用视频模块
    AgoraRtcEngine.disableVideo();
    //启用音频模块
    AgoraRtcEngine.enableAudio();
    //设置频道类型
    AgoraRtcEngine.setChannelProfile(ChannelProfile.Communication);
    //设置音频模式
    AgoraRtcEngine.setAudioProfile(
        AudioProfile.MusicHighQualityStereo, AudioScenario.ShowRoom);

    AgoraRtcEngine.enableAudioVolumeIndication(200,3,true);
    _addAgoraEventHandlers();
  }

  ///加入频道
  Future<bool> joinChannel(Account account, String roomId) async {
    if (state != State.idle) {
      var bool = await leaveChannel();
      if (!bool) {
        return false;
      }
    }
    state = State.joiningChannel;
    var req = TokenAgoraReq.create()
      ..uid = account.userId
      ..channel = roomId;
    var tokenResult = await App.mainRequest.post<String, TokenAgoraReq>(
        BeesApi.APPLY_AGORA_TOKEN, req, (byte) async {
      var resp = TokenAgoraResp.fromBuffer(byte);
      return ResultBody(true, data: resp.token);
    });
    //从红后获取token成功
    if (tokenResult.isSuccess) {
      var token = tokenResult.data;
      var bool = await AgoraRtcEngine.joinChannel(
          token, roomId, "", int.parse(account.userId));
      //加入成功
      if (bool) {
        state = State.inChannel;
        return true;
      } else {
        state = State.idle;
        return false;
      }
    }
  }

  ///离开频道
  Future<bool> leaveChannel() async => await AgoraRtcEngine.leaveChannel();

  //静音/开卖操作
  void enableLocalAudio(enabled) async {
    AgoraRtcEngine.enableLocalAudio(enabled);
  }

  //扬声器/听筒操作
  void enableSpeakerphone(enabled) async {
    AgoraRtcEngine.setEnableSpeakerphone(enabled);
  }

  //接受/停止接收远程流
  void muteAllRemoteAudioStreams(enabled) async {
    AgoraRtcEngine.muteAllRemoteAudioStreams(enabled);
  }

  void addAudioVolumeIndication(AudioVolumeIndication audioVolumeIndication) {
    audioVolumeIndications.add(audioVolumeIndication);
  }

  void removeAudioVolumeIndication(
      AudioVolumeIndication audioVolumeIndication) {
    audioVolumeIndications.remove(audioVolumeIndication);
  }

  ///监听事件
  void _addAgoraEventHandlers() {
    //加入房间
    AgoraRtcEngine.onJoinChannelSuccess =
        (String channel, int uid, int elapsed) {};

    //离开房间
    AgoraRtcEngine.onLeaveChannel = () {};

    //用户加入频道
    AgoraRtcEngine.onUserJoined = (int uid, int elapsed) {};

    ///用户离线
    AgoraRtcEngine.onUserOffline = (int uid, int reason) {};

    ///用户讲话
    AgoraRtcEngine.onAudioVolumeIndication =
        (int totalVolume, List<AudioVolumeInfo> speakers) {
      audioVolumeIndications.forEach((element) {
        element?.call(speakers);
      });
    };
  }
}

typedef AudioVolumeIndication(List<AudioVolumeInfo> speakers);

enum State { inChannel, joiningChannel, idle }
