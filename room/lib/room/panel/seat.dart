import 'package:baselib/common/base/base_theme_state.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/utils/toast.dart';
import 'package:baselib/widget/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:room/model/room.dart';
import 'package:room/room/controller/room_global.dart';
import 'package:room/room/model/model.dart';
import 'package:room/widget/mic_ripple.dart';
import 'package:rxdart/src/subjects/behavior_subject.dart';

///创建座位面板
///首先根据[ChatRoom]中的[RoomLayout]创建对应的座位
Widget buildSeats(BuildContext context, MTheme theme) {
  Widget seats = _build_layout_seat(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[_buildHostSeat(context), seats],
  );
}

Widget _build_layout_seat(BuildContext context) {
  var roomGlobal = RoomGlobal.instance;
  var seatSize = MediaQuery.of(context).size.width / 4;
  var height =
      roomGlobal.seatController.seats.length > 4 ? seatSize * 2 : seatSize;

  return Container(
    width: double.infinity,
    height: height,
    child: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: roomGlobal.seatController.seats.length,
      padding: EdgeInsets.only(top: 0),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var seatIdx = layout_8_seats[index];
        var seatStream = roomGlobal.seatController.seatStreams[seatIdx];
        return SeatWidget(
          seatStream,
          seatSize,
          seatSize,
          onTab: _seatClick,
        );
      },
    ),
  );
}

///主持位
Widget _buildHostSeat(BuildContext context) {
  var seatSize = MediaQuery.of(context).size.width / 4;
  var roomGlobal = RoomGlobal.instance;
  var seatStream = roomGlobal.seatController.hostSeatStream;
  return Container(
    child: SeatWidget(
      seatStream,
      MediaQuery.of(context).size.width,
      seatSize,
      onTab: _seatClick,
    ),
  );
}

///座位的点击事件
_seatClick(Seat seat) {
  if (seat == null) return;
  if (seat.hasUser) {
    ToastUtil.show("action");
  } else {
    ToastUtil.show("上麦");
  }
}

///房间座位
///[seatUserType] 座位上用户的类型，默认/老板
///[stream] 座位信息变更的流
///[seatType] //座位的类型 默认/电台
///[seatSize] //座位头像/头像框的大小
class SeatWidget extends StatefulWidget {
  final Stream<Seat> stream;
  final double seatWidth;
  final double seatHeight;
  final double _ratio = 2;
  Function(Seat seat) onTab;

  SeatWidget(this.stream, this.seatWidth, this.seatHeight, {this.onTab});

  @override
  State<StatefulWidget> createState() => _SeatWidgetState();
}

class _SeatWidgetState extends BaseThemeState<SeatWidget> {
  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return StreamBuilder<Seat>(
        stream: widget.stream,
        builder: (context, snapshot) {
          var seat = snapshot.data;
          if (seat == null) {
            return Container();
          }
          double avatarSize = widget.seatWidth >= widget.seatHeight
              ? widget.seatHeight / widget._ratio
              : widget.seatWidth / widget._ratio;
          var seatHasUser = seat != null && seat.userInfo != null;
          var seatView = _buildSeatAvatar(seatHasUser, seat, avatarSize);
          var seatTitle = _buildSeatTitle(seatHasUser, seat, theme);
          var micState = _buildMicState(seat);
          var avatarGroupChild = <Widget>[];
          if (seat?.isSpeak == true) {
            avatarGroupChild.add(MicRippleWidget(
              avatarSize,
              color: theme.themeColor.themeWhiteColor,
              circleNumber: 3,
            ));
          }
          avatarGroupChild.add(Stack(
            alignment: Alignment.center,
            children: <Widget>[seatView, micState],
          ));

          //如果当前座位的表情不为null，那么显示表情
          if (seat?.emojIcon != null && seat.emojIcon.isNotEmpty) {
            avatarGroupChild.add(Image.network(
              seat.emojIcon,
              width: avatarSize,
              height: avatarSize,
            ));
          }
          return Container(
            width: widget.seatWidth,
            height: widget.seatHeight,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                InkWell(
                    onTap: () => widget.onTab?.call(seat),
                    child: Stack(
                      alignment: Alignment.center,
                      children: avatarGroupChild,
                    )),
                Positioned(
                  child: seatTitle,
                  bottom: 0,
                )
              ],
            ),
          );
        });
  }

  ///座位的麦克风状态
  _buildMicState(Seat data) {
    return Visibility(
        visible: data?.micState == MicState.DISABLE,
        child: Positioned(
          child: Image.asset(
            'images/mic_muted.png',
            package: 'room',
            width: 12,
            height: 12,
          ),
          bottom: 0,
          right: 0,
        ));
  }

  ///创建座位的title
  _buildSeatTitle(bool seatHasUser, Seat seat, MTheme theme) {
    var seatTitle;
    //主播位
    if (seat.seatUserType == SeatUserType.host) {
      var title = [
        WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Image.asset(
              'images/host_title.png',
              package: 'room',
              width: 30,
              height: 15,
            ))
      ];
      //当前座位上有用户,增加用户的姓名在标签后
      if (seatHasUser) {
        title.add(WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(
                seat.userInfo.nickName,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: theme.themeColor.themeTextWhiteColor,
                    fontSize: theme.themeFontSize.fontSizeLittle),
              ),
            )));
      }

      seatTitle = Container(
        margin: EdgeInsets.only(top: 10),
        child: Text.rich(TextSpan(children: title)),
      );
    } else {
      var title;
      if (seat.seatUserType == SeatUserType.normal) {
        title = seatHasUser ? seat.userInfo.nickName : "${seat.seatIdx.index}号";
      } else if (seat.seatUserType == SeatUserType.boss) {
        title = seatHasUser ? "老板位:${seat.userInfo.nickName}" : "老板位";
      }
      seatTitle = Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
              color: theme.themeColor.themeTextWhiteColor,
              fontSize: theme.themeFontSize.fontSizeLittle),
        ),
      );
    }
    return Container(
      width: widget.seatWidth,
      alignment: Alignment.center,
      child: seatTitle,
    );
  }

  ///创建座位的头像占位
  Widget _buildSeatAvatar(bool seatHasUser, Seat seat, double avatarSize) {
    var seatView;
    if (seatHasUser) {
      seatView = AvatarWidget(
        seat.userInfo.avatar,
        avatarSize,
      );
    } else {
      var seatImage = seat.seatUserType != SeatUserType.boss
          ? 'images/seat_normal.png'
          : 'images/seat_boss.png';

      seatView = Image.asset(
        seatImage,
        package: 'room',
        width: avatarSize,
        height: avatarSize,
      );
    }
    return seatView;
  }
}
