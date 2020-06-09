import 'package:room/room_category.dart';

class ChatRoom {
  final String id;

  final String externRoomId;

  final String title;
  final String roomImg;
  final int memberNum;

  final RoomCategory category;

  final String ownerName;
  final String ownerAvatar;
  final String ownerId;
  final RoomLayout layout;
  final bool needPassword;
  final bool enable;

  final int index; //heat index value
  final String greateNum;

  ChatRoom(
      this.id,
      this.externRoomId,
      this.title,
      this.roomImg,
      this.memberNum,
      this.category,
      this.ownerName,
      this.ownerAvatar,
      this.ownerId,
      this.layout,
      this.needPassword,
      this.enable,
      this.index,
      this.greateNum);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatRoom &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          externRoomId == other.externRoomId &&
          title == other.title &&
          roomImg == other.roomImg &&
          memberNum == other.memberNum &&
          category == other.category &&
          ownerName == other.ownerName &&
          ownerAvatar == other.ownerAvatar &&
          ownerId == other.ownerId &&
          layout == other.layout &&
          needPassword == other.needPassword &&
          enable == other.enable &&
          index == other.index &&
          greateNum == other.greateNum;

  @override
  int get hashCode =>
      id.hashCode ^
      externRoomId.hashCode ^
      title.hashCode ^
      roomImg.hashCode ^
      memberNum.hashCode ^
      category.hashCode ^
      ownerName.hashCode ^
      ownerAvatar.hashCode ^
      ownerId.hashCode ^
      layout.hashCode ^
      needPassword.hashCode ^
      enable.hashCode ^
      index.hashCode ^
      greateNum.hashCode;

  @override
  String toString() {
    return 'ChatRoom{id: $id, externRoomId: $externRoomId, title: $title, roomImg: $roomImg, memberNum: $memberNum, Category: $category, ownerName: $ownerName, ownerAvatar: $ownerAvatar, ownerId: $ownerId, layout: $layout, needPassword: $needPassword, enable: $enable, index: $index, greateNum: $greateNum}';
  }
}

enum RoomLayout { seats_4, seats_8 }
