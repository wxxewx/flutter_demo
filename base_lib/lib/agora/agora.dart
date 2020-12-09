import 'package:agora_rtc_engine/rtc_engine.dart';
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

  RtcEngine rtcEngine;

  //频道状态
  State state = State.idle;

  List<AudioVolumeIndication> audioVolumeIndications = [];

  List<JoinRoomSuccess> joinRoomSuccesss = [];

  //初始化声网
  init() async {
    rtcEngine = await RtcEngine.create(App.agoraAppKey);

    //暂时禁用视频模块
    rtcEngine.disableVideo();
    //启用音频模块
    rtcEngine.enableAudio();
    //设置频道类型
    rtcEngine.setChannelProfile(ChannelProfile.Communication);
    //设置音频模式
    rtcEngine.setAudioProfile(
        AudioProfile.MusicHighQualityStereo, AudioScenario.ShowRoom);

    rtcEngine.enableAudioVolumeIndication(200, 3, true);
    var rtcEngineEventHandler = RtcEngineEventHandler(
        joinChannelSuccess: _joinChannelSuccess,
        leaveChannel: _laveChannel,
        userJoined: _userJoined,
        userOffline: _userOffline,
        audioVolumeIndication: _audioVolumeIndication);
    rtcEngine.setEventHandler(rtcEngineEventHandler);
  }

  ///加入频道
  Future<void> joinChannel(Account account, String roomId) async {
    if (state == State.inChannel) return;
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
      await rtcEngine.joinChannel(token, roomId, "", int.parse(account.userId));
    }
  }

  ///离开频道
  Future<void> leaveChannel() async {
    if (state == State.idle) return;
    rtcEngine.leaveChannel();
  }

  //静音/开卖操作
  void enableLocalAudio(enabled) async {
    rtcEngine.enableLocalAudio(enabled);
  }

  //扬声器/听筒操作
  void enableSpeakerphone(enabled) async {
    rtcEngine.setEnableSpeakerphone(enabled);
  }

  //接受/停止接收远程流
  void muteAllRemoteAudioStreams(enabled) async {
    rtcEngine.muteAllRemoteAudioStreams(enabled);
  }

  void addAudioVolumeIndication(AudioVolumeIndication audioVolumeIndication) {
    audioVolumeIndications.add(audioVolumeIndication);
  }

  void removeAudioVolumeIndication(
      AudioVolumeIndication audioVolumeIndication) {
    audioVolumeIndications.remove(audioVolumeIndication);
  }

  void addJoinRoomSuccess(JoinRoomSuccess joinRoomSuccess) {
    joinRoomSuccesss.add(joinRoomSuccess);
  }

  void removeJoinRoomSuccess(JoinRoomSuccess joinRoomSuccess) {
    joinRoomSuccesss.remove(joinRoomSuccess);
  }

//加入房间
  _joinChannelSuccess(String channel, int uid, int elapsed) {
    state = State.inChannel;
    joinRoomSuccesss.forEach((element) {
      element?.call(channel, uid, elapsed);
    });
  }

//离开房间
  _laveChannel(RtcStats rtcStats) {
    state = State.idle;
  }

//用户加入频道
  _userJoined(int uid, int elapsed) {}

  ///用户离线
  _userOffline(int uid, UserOfflineReason userOfflineReason) {}

  ///用户讲话
  _audioVolumeIndication(List<AudioVolumeInfo> speakers, int totalVolume) {
    audioVolumeIndications.forEach((element) {
      element?.call(speakers
          .map((e) => AudioVolume(e.uid, e.volume, e.vad, e.channelId))
          .toList());
    });
  }
}

typedef AudioVolumeIndication(List<AudioVolume> speakers);
typedef JoinRoomSuccess(String channel, int uid, int elapsed);

enum State { inChannel, joiningChannel, idle }

class AudioVolume {
  final int uid;

  final int volume;

  final int vad;

  final String channelId;

  AudioVolume(this.uid, this.volume, this.vad, this.channelId);
}
