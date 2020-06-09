import 'package:room/model/banner.dart';
import 'package:room/model/room.dart';
import 'package:room/room_category.dart';

abstract class Item {}

class BannerItem extends Item {
  final List<Banner_list> urls;

  BannerItem(this.urls);
}

class QuickMenuItem extends Item {
 List<QuickMenu> quickMenus;

 QuickMenuItem(this.quickMenus);

}

class  QuickMenu{
  final String title;
  final String image;

  QuickMenu(this.title, this.image);
}




class BasicRoomItem extends Item {
  final String title;
  final RoomCategory roomCategory;
  final List<ChatRoom> rooms;

  BasicRoomItem(this.title, this.roomCategory, this.rooms);
}

class RadioRoomItem extends Item {
  final List<ChatRoom> rooms;

  RadioRoomItem(this.rooms);
}
