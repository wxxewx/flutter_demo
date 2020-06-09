import 'package:baselib/common/bloc/base_bloc.dart';
import 'package:baselib/meta/config.dart';
import 'package:baselib/widget/loading.dart';
import 'package:room/api.dart';
import 'package:room/model/room.dart';
import 'package:room/room_category.dart';
import 'package:rxdart/rxdart.dart';

import 'item.dart';

class RoomHomeBloc extends BaseBloc {
  BehaviorSubject<LoadingState> loadState = BehaviorSubject();

  BehaviorSubject<List<Item>> homeItems = BehaviorSubject();

  List<Item> _homeItems = [];

  int page = 0;
  bool isLoadMore = false;
  bool isLoading = false;

  @override
  void initState() {
    loadState.add(LoadingState.loading);
    loadData();
  }

  void loadData() async {
    _homeItems.clear();
    page = 0;
    isLoadMore = false;
    var bannerItem = await _getBanners();

    if (bannerItem != null) {
      _homeItems.add(bannerItem);
    }

    _homeItems.add(QuickMenuItem([
      QuickMenu("预约开奖", "images/apointmen.png"),
      QuickMenu("星光榜", "images/star_ranking.png"),
      QuickMenu("游戏派单", "images/dispacher_order.png"),
    ]));

    var categorys = await RoomCategoryMeta.instance.get();

    var hotRooms = await _getHotRoom();
    var topicRooms = await _getTopicRoom(categorys);

    var radioRooms = await _getRadioRoom(categorys, page);

    if (hotRooms != null) {
      _homeItems.add(hotRooms);
    }

    if (topicRooms != null) {
      _homeItems.add(topicRooms);
    }

    if (radioRooms.isNotEmpty) {
      var radioRoomItem = RadioRoomItem(radioRooms);
      _homeItems.add(radioRoomItem);
    }

    homeItems.add(_homeItems);
    loadState.add(LoadingState.success);
  }

  ///获取banner的数据
  Future<BannerItem> _getBanners() async {
    var resultBody = await getHomeBanner();
    if (resultBody.isSuccess) {
      var data = resultBody.data.data;
      if (data.on) {
        return BannerItem(data.bannerList);
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  ///
  /// 获取热门房间的列表
  /// 会根据配置去获取
  Future<BasicRoomItem> _getHotRoom() async {
    var resultBody = await getRooms(RoomCategory.Hot().id, 0);
    if (resultBody.isSuccess) {
      var data = resultBody.data;
      var appConfig = await ConfigMeta.instance.get();
      var roomDisplayNum = int.parse(
          appConfig.get(AppConfigKey.RoomDisplayNum).isEmpty
              ? "3"
              : appConfig.get(AppConfigKey.RoomDisplayNum));
      if (data.isEmpty) return null;
      if (data.length >= roomDisplayNum ) {
        return BasicRoomItem(
            "热门聊天室", RoomCategory.Hot(), data.sublist(0, roomDisplayNum));
      }
      return BasicRoomItem("热门聊天室", RoomCategory.Hot(), data);
    }
    return null;
  }

  ///
  ///获取电台房间
  Future<List<ChatRoom>> _getRadioRoom(
      List<RoomCategory> categorys, int page) async {
    isLoading = true;
    if (isLoadMore) {
      isLoading = false;
      return [];
    }
    var list = categorys.where((element) => element.title == "电台").toList();

    if (list.isEmpty) {
      isLoading = false;
      return [];
    }
    var resultBody = await getRooms(list[0].id, page);
    if (resultBody.isSuccess) {
      var data = resultBody.data;
      if (data.isNotEmpty) {
        this.page = page + 1;
      } else {
        isLoadMore = true;
      }
      isLoading = false;
      return data;
    }
    isLoading = false;
    return [];
  }

  ///
  /// 获取话题据房间的列表
  Future<BasicRoomItem> _getTopicRoom(List<RoomCategory> categorys) async {
    var list = categorys.where((element) => element.title == "话题局").toList();
    if (list.isEmpty) return null;

    var resultBody = await getRooms(list[0].id, 0);
    if (resultBody.isSuccess) {
      var data = resultBody.data;
      if (data.isEmpty) return null;
      if (data.length >= 2) {
        return BasicRoomItem("话题局", list[0], data.sublist(0, 2));
      }
      return BasicRoomItem("话题局", list[0], data);
    }
    return null;
  }

  @override
  void dispose() {
    loadState.close();
    homeItems.close();
  }

  void loadMoreRadio() async {
    if (isLoading) return;
    var categorys = await RoomCategoryMeta.instance.get();
    var radioRooms = await _getRadioRoom(categorys, page);
    if (radioRooms.isNotEmpty) {
      var radioitems =
          _homeItems.where((element) => element is RadioRoomItem).toList();
      if (radioitems.isNotEmpty) {
        var radioitem = radioitems[0] as RadioRoomItem;
        radioitem.rooms.addAll(radioRooms);
        if (!homeItems.isClosed) {
          homeItems.add(_homeItems);
        }
      }
    }
  }
}
