///
//  Generated code. Do not modify.
//  source: room_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'room_message.pbenum.dart';

export 'room_message.pbenum.dart';

class TopRoomsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TopRoomsResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<Room>(1, 'rooms', $pb.PbFieldType.PM, subBuilder: Room.create)
    ..hasRequiredFields = false
  ;

  TopRoomsResp._() : super();
  factory TopRoomsResp() => create();
  factory TopRoomsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TopRoomsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TopRoomsResp clone() => TopRoomsResp()..mergeFromMessage(this);
  TopRoomsResp copyWith(void Function(TopRoomsResp) updates) => super.copyWith((message) => updates(message as TopRoomsResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TopRoomsResp create() => TopRoomsResp._();
  TopRoomsResp createEmptyInstance() => create();
  static $pb.PbList<TopRoomsResp> createRepeated() => $pb.PbList<TopRoomsResp>();
  @$core.pragma('dart2js:noInline')
  static TopRoomsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopRoomsResp>(create);
  static TopRoomsResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Room> get rooms => $_getList(0);
}

class RoomListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomListReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'category')
    ..a<$core.int>(2, 'pageNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'numPerPage', $pb.PbFieldType.O3)
    ..aOS(4, 'query')
    ..hasRequiredFields = false
  ;

  RoomListReq._() : super();
  factory RoomListReq() => create();
  factory RoomListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomListReq clone() => RoomListReq()..mergeFromMessage(this);
  RoomListReq copyWith(void Function(RoomListReq) updates) => super.copyWith((message) => updates(message as RoomListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomListReq create() => RoomListReq._();
  RoomListReq createEmptyInstance() => create();
  static $pb.PbList<RoomListReq> createRepeated() => $pb.PbList<RoomListReq>();
  @$core.pragma('dart2js:noInline')
  static RoomListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomListReq>(create);
  static RoomListReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get category => $_getSZ(0);
  @$pb.TagNumber(1)
  set category($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numPerPage => $_getIZ(2);
  @$pb.TagNumber(3)
  set numPerPage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumPerPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumPerPage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get query => $_getSZ(3);
  @$pb.TagNumber(4)
  set query($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuery() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuery() => clearField(4);
}

class Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Room', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..a<$core.int>(4, 'memberNum', $pb.PbFieldType.O3)
    ..aOS(5, 'ownerName')
    ..aOS(6, 'roomImg')
    ..aOS(7, 'category')
    ..aOS(8, 'ownerAvatar')
    ..e<Room_LAYOUT>(9, 'layout', $pb.PbFieldType.OE, defaultOrMaker: Room_LAYOUT.SEATS_4, valueOf: Room_LAYOUT.valueOf, enumValues: Room_LAYOUT.values)
    ..aOB(10, 'needPassword')
    ..aOS(11, 'externRoomId')
    ..aOS(12, 'ownerId')
    ..aOB(13, 'enable')
    ..a<$core.int>(14, 'index', $pb.PbFieldType.O3)
    ..aOS(15, 'greateNum')
    ..a<$core.int>(16, 'cateId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Room._() : super();
  factory Room() => create();
  factory Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Room clone() => Room()..mergeFromMessage(this);
  Room copyWith(void Function(Room) updates) => super.copyWith((message) => updates(message as Room));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Room create() => Room._();
  Room createEmptyInstance() => create();
  static $pb.PbList<Room> createRepeated() => $pb.PbList<Room>();
  @$core.pragma('dart2js:noInline')
  static Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Room>(create);
  static Room _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(4)
  $core.int get memberNum => $_getIZ(2);
  @$pb.TagNumber(4)
  set memberNum($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasMemberNum() => $_has(2);
  @$pb.TagNumber(4)
  void clearMemberNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get ownerName => $_getSZ(3);
  @$pb.TagNumber(5)
  set ownerName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasOwnerName() => $_has(3);
  @$pb.TagNumber(5)
  void clearOwnerName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get roomImg => $_getSZ(4);
  @$pb.TagNumber(6)
  set roomImg($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasRoomImg() => $_has(4);
  @$pb.TagNumber(6)
  void clearRoomImg() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get category => $_getSZ(5);
  @$pb.TagNumber(7)
  set category($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasCategory() => $_has(5);
  @$pb.TagNumber(7)
  void clearCategory() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get ownerAvatar => $_getSZ(6);
  @$pb.TagNumber(8)
  set ownerAvatar($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasOwnerAvatar() => $_has(6);
  @$pb.TagNumber(8)
  void clearOwnerAvatar() => clearField(8);

  @$pb.TagNumber(9)
  Room_LAYOUT get layout => $_getN(7);
  @$pb.TagNumber(9)
  set layout(Room_LAYOUT v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLayout() => $_has(7);
  @$pb.TagNumber(9)
  void clearLayout() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get needPassword => $_getBF(8);
  @$pb.TagNumber(10)
  set needPassword($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasNeedPassword() => $_has(8);
  @$pb.TagNumber(10)
  void clearNeedPassword() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get externRoomId => $_getSZ(9);
  @$pb.TagNumber(11)
  set externRoomId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasExternRoomId() => $_has(9);
  @$pb.TagNumber(11)
  void clearExternRoomId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get ownerId => $_getSZ(10);
  @$pb.TagNumber(12)
  set ownerId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasOwnerId() => $_has(10);
  @$pb.TagNumber(12)
  void clearOwnerId() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get enable => $_getBF(11);
  @$pb.TagNumber(13)
  set enable($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasEnable() => $_has(11);
  @$pb.TagNumber(13)
  void clearEnable() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get index => $_getIZ(12);
  @$pb.TagNumber(14)
  set index($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasIndex() => $_has(12);
  @$pb.TagNumber(14)
  void clearIndex() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get greateNum => $_getSZ(13);
  @$pb.TagNumber(15)
  set greateNum($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasGreateNum() => $_has(13);
  @$pb.TagNumber(15)
  void clearGreateNum() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get cateId => $_getIZ(14);
  @$pb.TagNumber(16)
  set cateId($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasCateId() => $_has(14);
  @$pb.TagNumber(16)
  void clearCateId() => clearField(16);
}

class RoomListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<Room>(1, 'rooms', $pb.PbFieldType.PM, subBuilder: Room.create)
    ..hasRequiredFields = false
  ;

  RoomListResp._() : super();
  factory RoomListResp() => create();
  factory RoomListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomListResp clone() => RoomListResp()..mergeFromMessage(this);
  RoomListResp copyWith(void Function(RoomListResp) updates) => super.copyWith((message) => updates(message as RoomListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomListResp create() => RoomListResp._();
  RoomListResp createEmptyInstance() => create();
  static $pb.PbList<RoomListResp> createRepeated() => $pb.PbList<RoomListResp>();
  @$core.pragma('dart2js:noInline')
  static RoomListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomListResp>(create);
  static RoomListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Room> get rooms => $_getList(0);
}

class RoomDetailReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomDetailReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'chatroomId')
    ..aOS(2, 'uid')
    ..aOS(3, 'password')
    ..hasRequiredFields = false
  ;

  RoomDetailReq._() : super();
  factory RoomDetailReq() => create();
  factory RoomDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomDetailReq clone() => RoomDetailReq()..mergeFromMessage(this);
  RoomDetailReq copyWith(void Function(RoomDetailReq) updates) => super.copyWith((message) => updates(message as RoomDetailReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomDetailReq create() => RoomDetailReq._();
  RoomDetailReq createEmptyInstance() => create();
  static $pb.PbList<RoomDetailReq> createRepeated() => $pb.PbList<RoomDetailReq>();
  @$core.pragma('dart2js:noInline')
  static RoomDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomDetailReq>(create);
  static RoomDetailReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chatroomId => $_getSZ(0);
  @$pb.TagNumber(1)
  set chatroomId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChatroomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChatroomId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}

class RoomDetailResp_Seat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomDetailResp.Seat', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'idx', $pb.PbFieldType.O3)
    ..e<RoomDetailResp_SEAT_STATE>(2, 'state', $pb.PbFieldType.OE, defaultOrMaker: RoomDetailResp_SEAT_STATE.DISABLED, valueOf: RoomDetailResp_SEAT_STATE.valueOf, enumValues: RoomDetailResp_SEAT_STATE.values)
    ..aOS(3, 'description')
    ..aOS(4, 'userId')
    ..aOS(5, 'userName')
    ..aOS(6, 'userAvatar')
    ..hasRequiredFields = false
  ;

  RoomDetailResp_Seat._() : super();
  factory RoomDetailResp_Seat() => create();
  factory RoomDetailResp_Seat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomDetailResp_Seat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomDetailResp_Seat clone() => RoomDetailResp_Seat()..mergeFromMessage(this);
  RoomDetailResp_Seat copyWith(void Function(RoomDetailResp_Seat) updates) => super.copyWith((message) => updates(message as RoomDetailResp_Seat));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomDetailResp_Seat create() => RoomDetailResp_Seat._();
  RoomDetailResp_Seat createEmptyInstance() => create();
  static $pb.PbList<RoomDetailResp_Seat> createRepeated() => $pb.PbList<RoomDetailResp_Seat>();
  @$core.pragma('dart2js:noInline')
  static RoomDetailResp_Seat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomDetailResp_Seat>(create);
  static RoomDetailResp_Seat _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idx => $_getIZ(0);
  @$pb.TagNumber(1)
  set idx($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdx() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdx() => clearField(1);

  @$pb.TagNumber(2)
  RoomDetailResp_SEAT_STATE get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(RoomDetailResp_SEAT_STATE v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userId => $_getSZ(3);
  @$pb.TagNumber(4)
  set userId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userName => $_getSZ(4);
  @$pb.TagNumber(5)
  set userName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserName() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userAvatar => $_getSZ(5);
  @$pb.TagNumber(6)
  set userAvatar($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserAvatar() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserAvatar() => clearField(6);
}

class RoomDetailResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomDetailResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomDetailResp_STATUS>(1, 'code', $pb.PbFieldType.OE, defaultOrMaker: RoomDetailResp_STATUS.OK, valueOf: RoomDetailResp_STATUS.valueOf, enumValues: RoomDetailResp_STATUS.values)
    ..aOM<Room>(2, 'room', subBuilder: Room.create)
    ..pc<RoomDetailResp_Seat>(3, 'seats', $pb.PbFieldType.PM, subBuilder: RoomDetailResp_Seat.create)
    ..aOB(4, 'roomFollowed')
    ..hasRequiredFields = false
  ;

  RoomDetailResp._() : super();
  factory RoomDetailResp() => create();
  factory RoomDetailResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomDetailResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomDetailResp clone() => RoomDetailResp()..mergeFromMessage(this);
  RoomDetailResp copyWith(void Function(RoomDetailResp) updates) => super.copyWith((message) => updates(message as RoomDetailResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomDetailResp create() => RoomDetailResp._();
  RoomDetailResp createEmptyInstance() => create();
  static $pb.PbList<RoomDetailResp> createRepeated() => $pb.PbList<RoomDetailResp>();
  @$core.pragma('dart2js:noInline')
  static RoomDetailResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomDetailResp>(create);
  static RoomDetailResp _defaultInstance;

  @$pb.TagNumber(1)
  RoomDetailResp_STATUS get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(RoomDetailResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  Room get room => $_getN(1);
  @$pb.TagNumber(2)
  set room(Room v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoom() => clearField(2);
  @$pb.TagNumber(2)
  Room ensureRoom() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<RoomDetailResp_Seat> get seats => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get roomFollowed => $_getBF(3);
  @$pb.TagNumber(4)
  set roomFollowed($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomFollowed() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomFollowed() => clearField(4);
}

class RoomCreateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomCreateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'title')
    ..a<$core.int>(4, 'categoryId', $pb.PbFieldType.O3)
    ..aOS(5, 'declaration')
    ..aOS(6, 'password')
    ..a<$core.int>(7, 'themeId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RoomCreateReq._() : super();
  factory RoomCreateReq() => create();
  factory RoomCreateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomCreateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomCreateReq clone() => RoomCreateReq()..mergeFromMessage(this);
  RoomCreateReq copyWith(void Function(RoomCreateReq) updates) => super.copyWith((message) => updates(message as RoomCreateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomCreateReq create() => RoomCreateReq._();
  RoomCreateReq createEmptyInstance() => create();
  static $pb.PbList<RoomCreateReq> createRepeated() => $pb.PbList<RoomCreateReq>();
  @$core.pragma('dart2js:noInline')
  static RoomCreateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomCreateReq>(create);
  static RoomCreateReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get categoryId => $_getIZ(3);
  @$pb.TagNumber(4)
  set categoryId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategoryId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategoryId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get declaration => $_getSZ(4);
  @$pb.TagNumber(5)
  set declaration($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeclaration() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeclaration() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get password => $_getSZ(5);
  @$pb.TagNumber(6)
  set password($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPassword() => $_has(5);
  @$pb.TagNumber(6)
  void clearPassword() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get themeId => $_getIZ(6);
  @$pb.TagNumber(7)
  set themeId($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasThemeId() => $_has(6);
  @$pb.TagNumber(7)
  void clearThemeId() => clearField(7);
}

class RoomCreateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomCreateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomCreateResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: RoomCreateResp_STATUS.OK, valueOf: RoomCreateResp_STATUS.valueOf, enumValues: RoomCreateResp_STATUS.values)
    ..aOS(2, 'roomId')
    ..hasRequiredFields = false
  ;

  RoomCreateResp._() : super();
  factory RoomCreateResp() => create();
  factory RoomCreateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomCreateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomCreateResp clone() => RoomCreateResp()..mergeFromMessage(this);
  RoomCreateResp copyWith(void Function(RoomCreateResp) updates) => super.copyWith((message) => updates(message as RoomCreateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomCreateResp create() => RoomCreateResp._();
  RoomCreateResp createEmptyInstance() => create();
  static $pb.PbList<RoomCreateResp> createRepeated() => $pb.PbList<RoomCreateResp>();
  @$core.pragma('dart2js:noInline')
  static RoomCreateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomCreateResp>(create);
  static RoomCreateResp _defaultInstance;

  @$pb.TagNumber(1)
  RoomCreateResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RoomCreateResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);
}

class RoomSubscribeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomSubscribeReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'roomId')
    ..aOB(4, 'followed')
    ..hasRequiredFields = false
  ;

  RoomSubscribeReq._() : super();
  factory RoomSubscribeReq() => create();
  factory RoomSubscribeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomSubscribeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomSubscribeReq clone() => RoomSubscribeReq()..mergeFromMessage(this);
  RoomSubscribeReq copyWith(void Function(RoomSubscribeReq) updates) => super.copyWith((message) => updates(message as RoomSubscribeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomSubscribeReq create() => RoomSubscribeReq._();
  RoomSubscribeReq createEmptyInstance() => create();
  static $pb.PbList<RoomSubscribeReq> createRepeated() => $pb.PbList<RoomSubscribeReq>();
  @$core.pragma('dart2js:noInline')
  static RoomSubscribeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomSubscribeReq>(create);
  static RoomSubscribeReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get roomId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get followed => $_getBF(3);
  @$pb.TagNumber(4)
  set followed($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFollowed() => $_has(3);
  @$pb.TagNumber(4)
  void clearFollowed() => clearField(4);
}

class RoomSubscribeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomSubscribeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomSubscribeResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: RoomSubscribeResp_STATUS.OK, valueOf: RoomSubscribeResp_STATUS.valueOf, enumValues: RoomSubscribeResp_STATUS.values)
    ..aOB(2, 'followed')
    ..hasRequiredFields = false
  ;

  RoomSubscribeResp._() : super();
  factory RoomSubscribeResp() => create();
  factory RoomSubscribeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomSubscribeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomSubscribeResp clone() => RoomSubscribeResp()..mergeFromMessage(this);
  RoomSubscribeResp copyWith(void Function(RoomSubscribeResp) updates) => super.copyWith((message) => updates(message as RoomSubscribeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomSubscribeResp create() => RoomSubscribeResp._();
  RoomSubscribeResp createEmptyInstance() => create();
  static $pb.PbList<RoomSubscribeResp> createRepeated() => $pb.PbList<RoomSubscribeResp>();
  @$core.pragma('dart2js:noInline')
  static RoomSubscribeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomSubscribeResp>(create);
  static RoomSubscribeResp _defaultInstance;

  @$pb.TagNumber(1)
  RoomSubscribeResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RoomSubscribeResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get followed => $_getBF(1);
  @$pb.TagNumber(2)
  set followed($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFollowed() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollowed() => clearField(2);
}

class UserRoomsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserRoomsReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<UserRoomsReq_Category>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: UserRoomsReq_Category.ALL, valueOf: UserRoomsReq_Category.valueOf, enumValues: UserRoomsReq_Category.values)
    ..hasRequiredFields = false
  ;

  UserRoomsReq._() : super();
  factory UserRoomsReq() => create();
  factory UserRoomsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRoomsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserRoomsReq clone() => UserRoomsReq()..mergeFromMessage(this);
  UserRoomsReq copyWith(void Function(UserRoomsReq) updates) => super.copyWith((message) => updates(message as UserRoomsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRoomsReq create() => UserRoomsReq._();
  UserRoomsReq createEmptyInstance() => create();
  static $pb.PbList<UserRoomsReq> createRepeated() => $pb.PbList<UserRoomsReq>();
  @$core.pragma('dart2js:noInline')
  static UserRoomsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRoomsReq>(create);
  static UserRoomsReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  UserRoomsReq_Category get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(UserRoomsReq_Category v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class UserRoomsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserRoomsResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<UserRoomsResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: UserRoomsResp_STATUS.OK, valueOf: UserRoomsResp_STATUS.valueOf, enumValues: UserRoomsResp_STATUS.values)
    ..pc<Room>(2, 'rooms', $pb.PbFieldType.PM, subBuilder: Room.create)
    ..hasRequiredFields = false
  ;

  UserRoomsResp._() : super();
  factory UserRoomsResp() => create();
  factory UserRoomsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRoomsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserRoomsResp clone() => UserRoomsResp()..mergeFromMessage(this);
  UserRoomsResp copyWith(void Function(UserRoomsResp) updates) => super.copyWith((message) => updates(message as UserRoomsResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRoomsResp create() => UserRoomsResp._();
  UserRoomsResp createEmptyInstance() => create();
  static $pb.PbList<UserRoomsResp> createRepeated() => $pb.PbList<UserRoomsResp>();
  @$core.pragma('dart2js:noInline')
  static UserRoomsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRoomsResp>(create);
  static UserRoomsResp _defaultInstance;

  @$pb.TagNumber(1)
  UserRoomsResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(UserRoomsResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Room> get rooms => $_getList(1);
}

class RoomMembersReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomMembersReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'roomId')
    ..e<Role>(4, 'role', $pb.PbFieldType.OE, defaultOrMaker: Role.GUEST, valueOf: Role.valueOf, enumValues: Role.values)
    ..a<$core.int>(5, 'noble', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'vip', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RoomMembersReq._() : super();
  factory RoomMembersReq() => create();
  factory RoomMembersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomMembersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomMembersReq clone() => RoomMembersReq()..mergeFromMessage(this);
  RoomMembersReq copyWith(void Function(RoomMembersReq) updates) => super.copyWith((message) => updates(message as RoomMembersReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomMembersReq create() => RoomMembersReq._();
  RoomMembersReq createEmptyInstance() => create();
  static $pb.PbList<RoomMembersReq> createRepeated() => $pb.PbList<RoomMembersReq>();
  @$core.pragma('dart2js:noInline')
  static RoomMembersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomMembersReq>(create);
  static RoomMembersReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get roomId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);

  @$pb.TagNumber(4)
  Role get role => $_getN(3);
  @$pb.TagNumber(4)
  set role(Role v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearRole() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get noble => $_getIZ(4);
  @$pb.TagNumber(5)
  set noble($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNoble() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoble() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get vip => $_getIZ(5);
  @$pb.TagNumber(6)
  set vip($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVip() => $_has(5);
  @$pb.TagNumber(6)
  void clearVip() => clearField(6);
}

class RoomMembersResp_Member extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomMembersResp.Member', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..aOS(4, 'time')
    ..a<$core.int>(5, 'noble', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'vip', $pb.PbFieldType.O3)
    ..e<Role>(7, 'role', $pb.PbFieldType.OE, defaultOrMaker: Role.GUEST, valueOf: Role.valueOf, enumValues: Role.values)
    ..aOS(8, 'comment')
    ..aOS(9, 'gender')
    ..a<$core.int>(10, 'age', $pb.PbFieldType.O3)
    ..aOS(11, 'greatNum')
    ..hasRequiredFields = false
  ;

  RoomMembersResp_Member._() : super();
  factory RoomMembersResp_Member() => create();
  factory RoomMembersResp_Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomMembersResp_Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomMembersResp_Member clone() => RoomMembersResp_Member()..mergeFromMessage(this);
  RoomMembersResp_Member copyWith(void Function(RoomMembersResp_Member) updates) => super.copyWith((message) => updates(message as RoomMembersResp_Member));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomMembersResp_Member create() => RoomMembersResp_Member._();
  RoomMembersResp_Member createEmptyInstance() => create();
  static $pb.PbList<RoomMembersResp_Member> createRepeated() => $pb.PbList<RoomMembersResp_Member>();
  @$core.pragma('dart2js:noInline')
  static RoomMembersResp_Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomMembersResp_Member>(create);
  static RoomMembersResp_Member _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get time => $_getSZ(3);
  @$pb.TagNumber(4)
  set time($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get noble => $_getIZ(4);
  @$pb.TagNumber(5)
  set noble($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNoble() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoble() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get vip => $_getIZ(5);
  @$pb.TagNumber(6)
  set vip($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVip() => $_has(5);
  @$pb.TagNumber(6)
  void clearVip() => clearField(6);

  @$pb.TagNumber(7)
  Role get role => $_getN(6);
  @$pb.TagNumber(7)
  set role(Role v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRole() => $_has(6);
  @$pb.TagNumber(7)
  void clearRole() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get comment => $_getSZ(7);
  @$pb.TagNumber(8)
  set comment($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasComment() => $_has(7);
  @$pb.TagNumber(8)
  void clearComment() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get gender => $_getSZ(8);
  @$pb.TagNumber(9)
  set gender($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasGender() => $_has(8);
  @$pb.TagNumber(9)
  void clearGender() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get age => $_getIZ(9);
  @$pb.TagNumber(10)
  set age($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAge() => $_has(9);
  @$pb.TagNumber(10)
  void clearAge() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get greatNum => $_getSZ(10);
  @$pb.TagNumber(11)
  set greatNum($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasGreatNum() => $_has(10);
  @$pb.TagNumber(11)
  void clearGreatNum() => clearField(11);
}

class RoomMembersResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomMembersResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomMembersResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: RoomMembersResp_STATUS.OK, valueOf: RoomMembersResp_STATUS.valueOf, enumValues: RoomMembersResp_STATUS.values)
    ..pc<RoomMembersResp_Member>(2, 'members', $pb.PbFieldType.PM, subBuilder: RoomMembersResp_Member.create)
    ..hasRequiredFields = false
  ;

  RoomMembersResp._() : super();
  factory RoomMembersResp() => create();
  factory RoomMembersResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomMembersResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomMembersResp clone() => RoomMembersResp()..mergeFromMessage(this);
  RoomMembersResp copyWith(void Function(RoomMembersResp) updates) => super.copyWith((message) => updates(message as RoomMembersResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomMembersResp create() => RoomMembersResp._();
  RoomMembersResp createEmptyInstance() => create();
  static $pb.PbList<RoomMembersResp> createRepeated() => $pb.PbList<RoomMembersResp>();
  @$core.pragma('dart2js:noInline')
  static RoomMembersResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomMembersResp>(create);
  static RoomMembersResp _defaultInstance;

  @$pb.TagNumber(1)
  RoomMembersResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RoomMembersResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<RoomMembersResp_Member> get members => $_getList(1);
}

class RoomMemberControlReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomMemberControlReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'roomId')
    ..aOS(4, 'tgtUid')
    ..e<Role>(5, 'role', $pb.PbFieldType.OE, defaultOrMaker: Role.GUEST, valueOf: Role.valueOf, enumValues: Role.values)
    ..aOB(6, 'valid')
    ..aOS(7, 'comment')
    ..hasRequiredFields = false
  ;

  RoomMemberControlReq._() : super();
  factory RoomMemberControlReq() => create();
  factory RoomMemberControlReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomMemberControlReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomMemberControlReq clone() => RoomMemberControlReq()..mergeFromMessage(this);
  RoomMemberControlReq copyWith(void Function(RoomMemberControlReq) updates) => super.copyWith((message) => updates(message as RoomMemberControlReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomMemberControlReq create() => RoomMemberControlReq._();
  RoomMemberControlReq createEmptyInstance() => create();
  static $pb.PbList<RoomMemberControlReq> createRepeated() => $pb.PbList<RoomMemberControlReq>();
  @$core.pragma('dart2js:noInline')
  static RoomMemberControlReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomMemberControlReq>(create);
  static RoomMemberControlReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get roomId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tgtUid => $_getSZ(3);
  @$pb.TagNumber(4)
  set tgtUid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTgtUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearTgtUid() => clearField(4);

  @$pb.TagNumber(5)
  Role get role => $_getN(4);
  @$pb.TagNumber(5)
  set role(Role v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRole() => $_has(4);
  @$pb.TagNumber(5)
  void clearRole() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get valid => $_getBF(5);
  @$pb.TagNumber(6)
  set valid($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasValid() => $_has(5);
  @$pb.TagNumber(6)
  void clearValid() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get comment => $_getSZ(6);
  @$pb.TagNumber(7)
  set comment($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasComment() => $_has(6);
  @$pb.TagNumber(7)
  void clearComment() => clearField(7);
}

class RoomMemberControlResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomMemberControlResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomMemberControlResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: RoomMemberControlResp_STATUS.OK, valueOf: RoomMemberControlResp_STATUS.valueOf, enumValues: RoomMemberControlResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  RoomMemberControlResp._() : super();
  factory RoomMemberControlResp() => create();
  factory RoomMemberControlResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomMemberControlResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomMemberControlResp clone() => RoomMemberControlResp()..mergeFromMessage(this);
  RoomMemberControlResp copyWith(void Function(RoomMemberControlResp) updates) => super.copyWith((message) => updates(message as RoomMemberControlResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomMemberControlResp create() => RoomMemberControlResp._();
  RoomMemberControlResp createEmptyInstance() => create();
  static $pb.PbList<RoomMemberControlResp> createRepeated() => $pb.PbList<RoomMemberControlResp>();
  @$core.pragma('dart2js:noInline')
  static RoomMemberControlResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomMemberControlResp>(create);
  static RoomMemberControlResp _defaultInstance;

  @$pb.TagNumber(1)
  RoomMemberControlResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RoomMemberControlResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RoomMemberControlNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomMemberControlNotification', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..e<Role>(4, 'role', $pb.PbFieldType.OE, defaultOrMaker: Role.GUEST, valueOf: Role.valueOf, enumValues: Role.values)
    ..aOS(5, 'comment')
    ..hasRequiredFields = false
  ;

  RoomMemberControlNotification._() : super();
  factory RoomMemberControlNotification() => create();
  factory RoomMemberControlNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomMemberControlNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomMemberControlNotification clone() => RoomMemberControlNotification()..mergeFromMessage(this);
  RoomMemberControlNotification copyWith(void Function(RoomMemberControlNotification) updates) => super.copyWith((message) => updates(message as RoomMemberControlNotification));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomMemberControlNotification create() => RoomMemberControlNotification._();
  RoomMemberControlNotification createEmptyInstance() => create();
  static $pb.PbList<RoomMemberControlNotification> createRepeated() => $pb.PbList<RoomMemberControlNotification>();
  @$core.pragma('dart2js:noInline')
  static RoomMemberControlNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomMemberControlNotification>(create);
  static RoomMemberControlNotification _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  Role get role => $_getN(3);
  @$pb.TagNumber(4)
  set role(Role v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearRole() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get comment => $_getSZ(4);
  @$pb.TagNumber(5)
  set comment($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearComment() => clearField(5);
}

class RoomEventReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomEventReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomEventReq_EventType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: RoomEventReq_EventType.ENTER, valueOf: RoomEventReq_EventType.valueOf, enumValues: RoomEventReq_EventType.values)
    ..aOS(2, 'uid')
    ..aOS(3, 'token')
    ..aOS(4, 'roomId')
    ..hasRequiredFields = false
  ;

  RoomEventReq._() : super();
  factory RoomEventReq() => create();
  factory RoomEventReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomEventReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomEventReq clone() => RoomEventReq()..mergeFromMessage(this);
  RoomEventReq copyWith(void Function(RoomEventReq) updates) => super.copyWith((message) => updates(message as RoomEventReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomEventReq create() => RoomEventReq._();
  RoomEventReq createEmptyInstance() => create();
  static $pb.PbList<RoomEventReq> createRepeated() => $pb.PbList<RoomEventReq>();
  @$core.pragma('dart2js:noInline')
  static RoomEventReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomEventReq>(create);
  static RoomEventReq _defaultInstance;

  @$pb.TagNumber(1)
  RoomEventReq_EventType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(RoomEventReq_EventType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get roomId => $_getSZ(3);
  @$pb.TagNumber(4)
  set roomId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomId() => clearField(4);
}

class RoomEventResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomEventResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomEventResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: RoomEventResp_STATUS.OK, valueOf: RoomEventResp_STATUS.valueOf, enumValues: RoomEventResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  RoomEventResp._() : super();
  factory RoomEventResp() => create();
  factory RoomEventResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomEventResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomEventResp clone() => RoomEventResp()..mergeFromMessage(this);
  RoomEventResp copyWith(void Function(RoomEventResp) updates) => super.copyWith((message) => updates(message as RoomEventResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomEventResp create() => RoomEventResp._();
  RoomEventResp createEmptyInstance() => create();
  static $pb.PbList<RoomEventResp> createRepeated() => $pb.PbList<RoomEventResp>();
  @$core.pragma('dart2js:noInline')
  static RoomEventResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomEventResp>(create);
  static RoomEventResp _defaultInstance;

  @$pb.TagNumber(1)
  RoomEventResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RoomEventResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RoomEventNotification_User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomEventNotification.User', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..a<$core.int>(4, 'noble', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'vip', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RoomEventNotification_User._() : super();
  factory RoomEventNotification_User() => create();
  factory RoomEventNotification_User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomEventNotification_User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomEventNotification_User clone() => RoomEventNotification_User()..mergeFromMessage(this);
  RoomEventNotification_User copyWith(void Function(RoomEventNotification_User) updates) => super.copyWith((message) => updates(message as RoomEventNotification_User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification_User create() => RoomEventNotification_User._();
  RoomEventNotification_User createEmptyInstance() => create();
  static $pb.PbList<RoomEventNotification_User> createRepeated() => $pb.PbList<RoomEventNotification_User>();
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification_User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomEventNotification_User>(create);
  static RoomEventNotification_User _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get noble => $_getIZ(3);
  @$pb.TagNumber(4)
  set noble($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNoble() => $_has(3);
  @$pb.TagNumber(4)
  void clearNoble() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get vip => $_getIZ(4);
  @$pb.TagNumber(5)
  set vip($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVip() => $_has(4);
  @$pb.TagNumber(5)
  void clearVip() => clearField(5);
}

class RoomEventNotification_Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomEventNotification.Room', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'roomId')
    ..aOS(2, 'title')
    ..hasRequiredFields = false
  ;

  RoomEventNotification_Room._() : super();
  factory RoomEventNotification_Room() => create();
  factory RoomEventNotification_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomEventNotification_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomEventNotification_Room clone() => RoomEventNotification_Room()..mergeFromMessage(this);
  RoomEventNotification_Room copyWith(void Function(RoomEventNotification_Room) updates) => super.copyWith((message) => updates(message as RoomEventNotification_Room));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification_Room create() => RoomEventNotification_Room._();
  RoomEventNotification_Room createEmptyInstance() => create();
  static $pb.PbList<RoomEventNotification_Room> createRepeated() => $pb.PbList<RoomEventNotification_Room>();
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomEventNotification_Room>(create);
  static RoomEventNotification_Room _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomId => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class RoomEventNotification_Gift extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomEventNotification.Gift', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'toUid')
    ..aOS(2, 'toName')
    ..a<$core.int>(3, 'giftId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'count', $pb.PbFieldType.O3)
    ..e<RoomEventNotification_GRADE>(5, 'grade', $pb.PbFieldType.OE, defaultOrMaker: RoomEventNotification_GRADE.NONE, valueOf: RoomEventNotification_GRADE.valueOf, enumValues: RoomEventNotification_GRADE.values)
    ..aOB(6, 'winning')
    ..hasRequiredFields = false
  ;

  RoomEventNotification_Gift._() : super();
  factory RoomEventNotification_Gift() => create();
  factory RoomEventNotification_Gift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomEventNotification_Gift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomEventNotification_Gift clone() => RoomEventNotification_Gift()..mergeFromMessage(this);
  RoomEventNotification_Gift copyWith(void Function(RoomEventNotification_Gift) updates) => super.copyWith((message) => updates(message as RoomEventNotification_Gift));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification_Gift create() => RoomEventNotification_Gift._();
  RoomEventNotification_Gift createEmptyInstance() => create();
  static $pb.PbList<RoomEventNotification_Gift> createRepeated() => $pb.PbList<RoomEventNotification_Gift>();
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification_Gift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomEventNotification_Gift>(create);
  static RoomEventNotification_Gift _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get toUid => $_getSZ(0);
  @$pb.TagNumber(1)
  set toUid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearToUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get toName => $_getSZ(1);
  @$pb.TagNumber(2)
  set toName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToName() => $_has(1);
  @$pb.TagNumber(2)
  void clearToName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get giftId => $_getIZ(2);
  @$pb.TagNumber(3)
  set giftId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGiftId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGiftId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get count => $_getIZ(3);
  @$pb.TagNumber(4)
  set count($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);

  @$pb.TagNumber(5)
  RoomEventNotification_GRADE get grade => $_getN(4);
  @$pb.TagNumber(5)
  set grade(RoomEventNotification_GRADE v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGrade() => $_has(4);
  @$pb.TagNumber(5)
  void clearGrade() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get winning => $_getBF(5);
  @$pb.TagNumber(6)
  set winning($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWinning() => $_has(5);
  @$pb.TagNumber(6)
  void clearWinning() => clearField(6);
}

class RoomEventNotification_BoxOpenMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomEventNotification.BoxOpenMsg', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'icon')
    ..e<RoomEventNotification_GRADE>(3, 'boxGrade', $pb.PbFieldType.OE, defaultOrMaker: RoomEventNotification_GRADE.NONE, valueOf: RoomEventNotification_GRADE.valueOf, enumValues: RoomEventNotification_GRADE.values)
    ..aOB(4, 'winning')
    ..hasRequiredFields = false
  ;

  RoomEventNotification_BoxOpenMsg._() : super();
  factory RoomEventNotification_BoxOpenMsg() => create();
  factory RoomEventNotification_BoxOpenMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomEventNotification_BoxOpenMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomEventNotification_BoxOpenMsg clone() => RoomEventNotification_BoxOpenMsg()..mergeFromMessage(this);
  RoomEventNotification_BoxOpenMsg copyWith(void Function(RoomEventNotification_BoxOpenMsg) updates) => super.copyWith((message) => updates(message as RoomEventNotification_BoxOpenMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification_BoxOpenMsg create() => RoomEventNotification_BoxOpenMsg._();
  RoomEventNotification_BoxOpenMsg createEmptyInstance() => create();
  static $pb.PbList<RoomEventNotification_BoxOpenMsg> createRepeated() => $pb.PbList<RoomEventNotification_BoxOpenMsg>();
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification_BoxOpenMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomEventNotification_BoxOpenMsg>(create);
  static RoomEventNotification_BoxOpenMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => clearField(2);

  @$pb.TagNumber(3)
  RoomEventNotification_GRADE get boxGrade => $_getN(2);
  @$pb.TagNumber(3)
  set boxGrade(RoomEventNotification_GRADE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBoxGrade() => $_has(2);
  @$pb.TagNumber(3)
  void clearBoxGrade() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get winning => $_getBF(3);
  @$pb.TagNumber(4)
  set winning($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWinning() => $_has(3);
  @$pb.TagNumber(4)
  void clearWinning() => clearField(4);
}

class RoomEventNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomEventNotification', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomEventReq_EventType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: RoomEventReq_EventType.ENTER, valueOf: RoomEventReq_EventType.valueOf, enumValues: RoomEventReq_EventType.values)
    ..aOM<RoomEventNotification_User>(2, 'user', subBuilder: RoomEventNotification_User.create)
    ..pc<RoomEventNotification_Gift>(3, 'gifts', $pb.PbFieldType.PM, subBuilder: RoomEventNotification_Gift.create)
    ..pc<RoomEventNotification_BoxOpenMsg>(4, 'boxMsgs', $pb.PbFieldType.PM, subBuilder: RoomEventNotification_BoxOpenMsg.create)
    ..aOM<RoomEventNotification_Room>(5, 'room', subBuilder: RoomEventNotification_Room.create)
    ..hasRequiredFields = false
  ;

  RoomEventNotification._() : super();
  factory RoomEventNotification() => create();
  factory RoomEventNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomEventNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomEventNotification clone() => RoomEventNotification()..mergeFromMessage(this);
  RoomEventNotification copyWith(void Function(RoomEventNotification) updates) => super.copyWith((message) => updates(message as RoomEventNotification));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification create() => RoomEventNotification._();
  RoomEventNotification createEmptyInstance() => create();
  static $pb.PbList<RoomEventNotification> createRepeated() => $pb.PbList<RoomEventNotification>();
  @$core.pragma('dart2js:noInline')
  static RoomEventNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomEventNotification>(create);
  static RoomEventNotification _defaultInstance;

  @$pb.TagNumber(1)
  RoomEventReq_EventType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(RoomEventReq_EventType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  RoomEventNotification_User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(RoomEventNotification_User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  RoomEventNotification_User ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<RoomEventNotification_Gift> get gifts => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<RoomEventNotification_BoxOpenMsg> get boxMsgs => $_getList(3);

  @$pb.TagNumber(5)
  RoomEventNotification_Room get room => $_getN(4);
  @$pb.TagNumber(5)
  set room(RoomEventNotification_Room v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoom() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoom() => clearField(5);
  @$pb.TagNumber(5)
  RoomEventNotification_Room ensureRoom() => $_ensure(4);
}

class RoomControlReq_Info extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomControlReq.Info', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'declaration')
    ..aOS(2, 'background')
    ..aOS(3, 'roomAvatar')
    ..aOS(4, 'password')
    ..e<ControlState>(5, 'mutedAll', $pb.PbFieldType.OE, defaultOrMaker: ControlState.UNK, valueOf: ControlState.valueOf, enumValues: ControlState.values)
    ..e<ControlState>(6, 'enable', $pb.PbFieldType.OE, defaultOrMaker: ControlState.UNK, valueOf: ControlState.valueOf, enumValues: ControlState.values)
    ..aOS(7, 'title')
    ..hasRequiredFields = false
  ;

  RoomControlReq_Info._() : super();
  factory RoomControlReq_Info() => create();
  factory RoomControlReq_Info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomControlReq_Info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomControlReq_Info clone() => RoomControlReq_Info()..mergeFromMessage(this);
  RoomControlReq_Info copyWith(void Function(RoomControlReq_Info) updates) => super.copyWith((message) => updates(message as RoomControlReq_Info));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomControlReq_Info create() => RoomControlReq_Info._();
  RoomControlReq_Info createEmptyInstance() => create();
  static $pb.PbList<RoomControlReq_Info> createRepeated() => $pb.PbList<RoomControlReq_Info>();
  @$core.pragma('dart2js:noInline')
  static RoomControlReq_Info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomControlReq_Info>(create);
  static RoomControlReq_Info _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get declaration => $_getSZ(0);
  @$pb.TagNumber(1)
  set declaration($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeclaration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeclaration() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get background => $_getSZ(1);
  @$pb.TagNumber(2)
  set background($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackground() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackground() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get roomAvatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomAvatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  ControlState get mutedAll => $_getN(4);
  @$pb.TagNumber(5)
  set mutedAll(ControlState v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMutedAll() => $_has(4);
  @$pb.TagNumber(5)
  void clearMutedAll() => clearField(5);

  @$pb.TagNumber(6)
  ControlState get enable => $_getN(5);
  @$pb.TagNumber(6)
  set enable(ControlState v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEnable() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnable() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(6);
  @$pb.TagNumber(7)
  set title($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearTitle() => clearField(7);
}

class RoomControlReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomControlReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomControlReq_ControlType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: RoomControlReq_ControlType.UNK, valueOf: RoomControlReq_ControlType.valueOf, enumValues: RoomControlReq_ControlType.values)
    ..aOS(2, 'uid')
    ..aOS(3, 'token')
    ..aOS(4, 'roomId')
    ..aOM<RoomControlReq_Info>(5, 'roomInfo', subBuilder: RoomControlReq_Info.create)
    ..aOS(6, 'tgtUid')
    ..hasRequiredFields = false
  ;

  RoomControlReq._() : super();
  factory RoomControlReq() => create();
  factory RoomControlReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomControlReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomControlReq clone() => RoomControlReq()..mergeFromMessage(this);
  RoomControlReq copyWith(void Function(RoomControlReq) updates) => super.copyWith((message) => updates(message as RoomControlReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomControlReq create() => RoomControlReq._();
  RoomControlReq createEmptyInstance() => create();
  static $pb.PbList<RoomControlReq> createRepeated() => $pb.PbList<RoomControlReq>();
  @$core.pragma('dart2js:noInline')
  static RoomControlReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomControlReq>(create);
  static RoomControlReq _defaultInstance;

  @$pb.TagNumber(1)
  RoomControlReq_ControlType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(RoomControlReq_ControlType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get roomId => $_getSZ(3);
  @$pb.TagNumber(4)
  set roomId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomId() => clearField(4);

  @$pb.TagNumber(5)
  RoomControlReq_Info get roomInfo => $_getN(4);
  @$pb.TagNumber(5)
  set roomInfo(RoomControlReq_Info v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoomInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoomInfo() => clearField(5);
  @$pb.TagNumber(5)
  RoomControlReq_Info ensureRoomInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get tgtUid => $_getSZ(5);
  @$pb.TagNumber(6)
  set tgtUid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTgtUid() => $_has(5);
  @$pb.TagNumber(6)
  void clearTgtUid() => clearField(6);
}

class RoomControlResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomControlResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<RoomControlResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: RoomControlResp_STATUS.OK, valueOf: RoomControlResp_STATUS.valueOf, enumValues: RoomControlResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  RoomControlResp._() : super();
  factory RoomControlResp() => create();
  factory RoomControlResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomControlResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomControlResp clone() => RoomControlResp()..mergeFromMessage(this);
  RoomControlResp copyWith(void Function(RoomControlResp) updates) => super.copyWith((message) => updates(message as RoomControlResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomControlResp create() => RoomControlResp._();
  RoomControlResp createEmptyInstance() => create();
  static $pb.PbList<RoomControlResp> createRepeated() => $pb.PbList<RoomControlResp>();
  @$core.pragma('dart2js:noInline')
  static RoomControlResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomControlResp>(create);
  static RoomControlResp _defaultInstance;

  @$pb.TagNumber(1)
  RoomControlResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RoomControlResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SeatControlReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatControlReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SeatControlReq_ControlType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: SeatControlReq_ControlType.UNK, valueOf: SeatControlReq_ControlType.valueOf, enumValues: SeatControlReq_ControlType.values)
    ..aOS(2, 'uid')
    ..aOS(3, 'token')
    ..aOS(4, 'roomId')
    ..aOS(5, 'tgtUid')
    ..a<$core.int>(6, 'seatIdx', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SeatControlReq._() : super();
  factory SeatControlReq() => create();
  factory SeatControlReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatControlReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatControlReq clone() => SeatControlReq()..mergeFromMessage(this);
  SeatControlReq copyWith(void Function(SeatControlReq) updates) => super.copyWith((message) => updates(message as SeatControlReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatControlReq create() => SeatControlReq._();
  SeatControlReq createEmptyInstance() => create();
  static $pb.PbList<SeatControlReq> createRepeated() => $pb.PbList<SeatControlReq>();
  @$core.pragma('dart2js:noInline')
  static SeatControlReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatControlReq>(create);
  static SeatControlReq _defaultInstance;

  @$pb.TagNumber(1)
  SeatControlReq_ControlType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SeatControlReq_ControlType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get roomId => $_getSZ(3);
  @$pb.TagNumber(4)
  set roomId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tgtUid => $_getSZ(4);
  @$pb.TagNumber(5)
  set tgtUid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTgtUid() => $_has(4);
  @$pb.TagNumber(5)
  void clearTgtUid() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get seatIdx => $_getIZ(5);
  @$pb.TagNumber(6)
  set seatIdx($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSeatIdx() => $_has(5);
  @$pb.TagNumber(6)
  void clearSeatIdx() => clearField(6);
}

class SeatControlResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatControlResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SeatControlResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SeatControlResp_STATUS.OK, valueOf: SeatControlResp_STATUS.valueOf, enumValues: SeatControlResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  SeatControlResp._() : super();
  factory SeatControlResp() => create();
  factory SeatControlResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatControlResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatControlResp clone() => SeatControlResp()..mergeFromMessage(this);
  SeatControlResp copyWith(void Function(SeatControlResp) updates) => super.copyWith((message) => updates(message as SeatControlResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatControlResp create() => SeatControlResp._();
  SeatControlResp createEmptyInstance() => create();
  static $pb.PbList<SeatControlResp> createRepeated() => $pb.PbList<SeatControlResp>();
  @$core.pragma('dart2js:noInline')
  static SeatControlResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatControlResp>(create);
  static SeatControlResp _defaultInstance;

  @$pb.TagNumber(1)
  SeatControlResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SeatControlResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RoomTitleTipResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomTitleTipResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pPS(1, 'titles')
    ..hasRequiredFields = false
  ;

  RoomTitleTipResp._() : super();
  factory RoomTitleTipResp() => create();
  factory RoomTitleTipResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomTitleTipResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomTitleTipResp clone() => RoomTitleTipResp()..mergeFromMessage(this);
  RoomTitleTipResp copyWith(void Function(RoomTitleTipResp) updates) => super.copyWith((message) => updates(message as RoomTitleTipResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomTitleTipResp create() => RoomTitleTipResp._();
  RoomTitleTipResp createEmptyInstance() => create();
  static $pb.PbList<RoomTitleTipResp> createRepeated() => $pb.PbList<RoomTitleTipResp>();
  @$core.pragma('dart2js:noInline')
  static RoomTitleTipResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomTitleTipResp>(create);
  static RoomTitleTipResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get titles => $_getList(0);
}

class RoomThemeResp_Theme extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomThemeResp.Theme', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'tid', $pb.PbFieldType.O3)
    ..aOS(2, 'url')
    ..hasRequiredFields = false
  ;

  RoomThemeResp_Theme._() : super();
  factory RoomThemeResp_Theme() => create();
  factory RoomThemeResp_Theme.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomThemeResp_Theme.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomThemeResp_Theme clone() => RoomThemeResp_Theme()..mergeFromMessage(this);
  RoomThemeResp_Theme copyWith(void Function(RoomThemeResp_Theme) updates) => super.copyWith((message) => updates(message as RoomThemeResp_Theme));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomThemeResp_Theme create() => RoomThemeResp_Theme._();
  RoomThemeResp_Theme createEmptyInstance() => create();
  static $pb.PbList<RoomThemeResp_Theme> createRepeated() => $pb.PbList<RoomThemeResp_Theme>();
  @$core.pragma('dart2js:noInline')
  static RoomThemeResp_Theme getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomThemeResp_Theme>(create);
  static RoomThemeResp_Theme _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tid => $_getIZ(0);
  @$pb.TagNumber(1)
  set tid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);
}

class RoomThemeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomThemeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<RoomThemeResp_Theme>(1, 'themes', $pb.PbFieldType.PM, subBuilder: RoomThemeResp_Theme.create)
    ..hasRequiredFields = false
  ;

  RoomThemeResp._() : super();
  factory RoomThemeResp() => create();
  factory RoomThemeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomThemeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomThemeResp clone() => RoomThemeResp()..mergeFromMessage(this);
  RoomThemeResp copyWith(void Function(RoomThemeResp) updates) => super.copyWith((message) => updates(message as RoomThemeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomThemeResp create() => RoomThemeResp._();
  RoomThemeResp createEmptyInstance() => create();
  static $pb.PbList<RoomThemeResp> createRepeated() => $pb.PbList<RoomThemeResp>();
  @$core.pragma('dart2js:noInline')
  static RoomThemeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomThemeResp>(create);
  static RoomThemeResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RoomThemeResp_Theme> get themes => $_getList(0);
}

class RoomExtInfo_SeatTimer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomExtInfo.SeatTimer', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'seatIdx', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'seatTimer', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  RoomExtInfo_SeatTimer._() : super();
  factory RoomExtInfo_SeatTimer() => create();
  factory RoomExtInfo_SeatTimer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomExtInfo_SeatTimer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomExtInfo_SeatTimer clone() => RoomExtInfo_SeatTimer()..mergeFromMessage(this);
  RoomExtInfo_SeatTimer copyWith(void Function(RoomExtInfo_SeatTimer) updates) => super.copyWith((message) => updates(message as RoomExtInfo_SeatTimer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomExtInfo_SeatTimer create() => RoomExtInfo_SeatTimer._();
  RoomExtInfo_SeatTimer createEmptyInstance() => create();
  static $pb.PbList<RoomExtInfo_SeatTimer> createRepeated() => $pb.PbList<RoomExtInfo_SeatTimer>();
  @$core.pragma('dart2js:noInline')
  static RoomExtInfo_SeatTimer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomExtInfo_SeatTimer>(create);
  static RoomExtInfo_SeatTimer _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get seatIdx => $_getIZ(0);
  @$pb.TagNumber(1)
  set seatIdx($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeatIdx() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeatIdx() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get seatTimer => $_getIZ(1);
  @$pb.TagNumber(2)
  set seatTimer($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeatTimer() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeatTimer() => clearField(2);
}

class RoomExtInfo_OrderCounter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomExtInfo.OrderCounter', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'count', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'duration', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'expiresAt', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  RoomExtInfo_OrderCounter._() : super();
  factory RoomExtInfo_OrderCounter() => create();
  factory RoomExtInfo_OrderCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomExtInfo_OrderCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomExtInfo_OrderCounter clone() => RoomExtInfo_OrderCounter()..mergeFromMessage(this);
  RoomExtInfo_OrderCounter copyWith(void Function(RoomExtInfo_OrderCounter) updates) => super.copyWith((message) => updates(message as RoomExtInfo_OrderCounter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomExtInfo_OrderCounter create() => RoomExtInfo_OrderCounter._();
  RoomExtInfo_OrderCounter createEmptyInstance() => create();
  static $pb.PbList<RoomExtInfo_OrderCounter> createRepeated() => $pb.PbList<RoomExtInfo_OrderCounter>();
  @$core.pragma('dart2js:noInline')
  static RoomExtInfo_OrderCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomExtInfo_OrderCounter>(create);
  static RoomExtInfo_OrderCounter _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get expiresAt => $_getIZ(2);
  @$pb.TagNumber(3)
  set expiresAt($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpiresAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpiresAt() => clearField(3);
}

class RoomExtInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoomExtInfo', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'bgThemeId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'roomTimer', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'seatTimer', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'seatIdx', $pb.PbFieldType.O3)
    ..aOS(5, 'announcement')
    ..aOS(6, 'title')
    ..m<$core.int, RoomExtInfo_SeatTimer>(7, 'seatTimers', entryClassName: 'RoomExtInfo.SeatTimersEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OM, valueCreator: RoomExtInfo_SeatTimer.create, packageName: const $pb.PackageName('proto_def'))
    ..aOM<RoomExtInfo_OrderCounter>(8, 'counter', subBuilder: RoomExtInfo_OrderCounter.create)
    ..e<RoomExtInfo_CpStage>(9, 'stage', $pb.PbFieldType.OE, defaultOrMaker: RoomExtInfo_CpStage.NOTHING, valueOf: RoomExtInfo_CpStage.valueOf, enumValues: RoomExtInfo_CpStage.values)
    ..hasRequiredFields = false
  ;

  RoomExtInfo._() : super();
  factory RoomExtInfo() => create();
  factory RoomExtInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomExtInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RoomExtInfo clone() => RoomExtInfo()..mergeFromMessage(this);
  RoomExtInfo copyWith(void Function(RoomExtInfo) updates) => super.copyWith((message) => updates(message as RoomExtInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomExtInfo create() => RoomExtInfo._();
  RoomExtInfo createEmptyInstance() => create();
  static $pb.PbList<RoomExtInfo> createRepeated() => $pb.PbList<RoomExtInfo>();
  @$core.pragma('dart2js:noInline')
  static RoomExtInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomExtInfo>(create);
  static RoomExtInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bgThemeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bgThemeId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBgThemeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBgThemeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get roomTimer => $_getIZ(1);
  @$pb.TagNumber(2)
  set roomTimer($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomTimer() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomTimer() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.int get seatTimer => $_getIZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set seatTimer($core.int v) { $_setUnsignedInt32(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasSeatTimer() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearSeatTimer() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.int get seatIdx => $_getIZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set seatIdx($core.int v) { $_setSignedInt32(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasSeatIdx() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearSeatIdx() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get announcement => $_getSZ(4);
  @$pb.TagNumber(5)
  set announcement($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAnnouncement() => $_has(4);
  @$pb.TagNumber(5)
  void clearAnnouncement() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(6)
  set title($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTitle() => clearField(6);

  @$pb.TagNumber(7)
  $core.Map<$core.int, RoomExtInfo_SeatTimer> get seatTimers => $_getMap(6);

  @$pb.TagNumber(8)
  RoomExtInfo_OrderCounter get counter => $_getN(7);
  @$pb.TagNumber(8)
  set counter(RoomExtInfo_OrderCounter v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCounter() => $_has(7);
  @$pb.TagNumber(8)
  void clearCounter() => clearField(8);
  @$pb.TagNumber(8)
  RoomExtInfo_OrderCounter ensureCounter() => $_ensure(7);

  @$pb.TagNumber(9)
  RoomExtInfo_CpStage get stage => $_getN(8);
  @$pb.TagNumber(9)
  set stage(RoomExtInfo_CpStage v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStage() => $_has(8);
  @$pb.TagNumber(9)
  void clearStage() => clearField(9);
}

class SeatQueueItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatQueueItem', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'seatIdx', $pb.PbFieldType.O3)
    ..e<SeatQueueItem_SeatState>(2, 'seatState', $pb.PbFieldType.OE, defaultOrMaker: SeatQueueItem_SeatState.UNK, valueOf: SeatQueueItem_SeatState.valueOf, enumValues: SeatQueueItem_SeatState.values)
    ..e<ControlState>(3, 'micState', $pb.PbFieldType.OE, defaultOrMaker: ControlState.UNK, valueOf: ControlState.valueOf, enumValues: ControlState.values)
    ..aOS(4, 'uid')
    ..aOS(5, 'userName')
    ..aOS(6, 'userAvatar')
    ..a<$core.int>(7, 'userNoble', $pb.PbFieldType.O3)
    ..a<$core.int>(8, 'userVip', $pb.PbFieldType.O3)
    ..aOS(9, 'avatarBox')
    ..hasRequiredFields = false
  ;

  SeatQueueItem._() : super();
  factory SeatQueueItem() => create();
  factory SeatQueueItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatQueueItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatQueueItem clone() => SeatQueueItem()..mergeFromMessage(this);
  SeatQueueItem copyWith(void Function(SeatQueueItem) updates) => super.copyWith((message) => updates(message as SeatQueueItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatQueueItem create() => SeatQueueItem._();
  SeatQueueItem createEmptyInstance() => create();
  static $pb.PbList<SeatQueueItem> createRepeated() => $pb.PbList<SeatQueueItem>();
  @$core.pragma('dart2js:noInline')
  static SeatQueueItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatQueueItem>(create);
  static SeatQueueItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get seatIdx => $_getIZ(0);
  @$pb.TagNumber(1)
  set seatIdx($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeatIdx() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeatIdx() => clearField(1);

  @$pb.TagNumber(2)
  SeatQueueItem_SeatState get seatState => $_getN(1);
  @$pb.TagNumber(2)
  set seatState(SeatQueueItem_SeatState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeatState() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeatState() => clearField(2);

  @$pb.TagNumber(3)
  ControlState get micState => $_getN(2);
  @$pb.TagNumber(3)
  set micState(ControlState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMicState() => $_has(2);
  @$pb.TagNumber(3)
  void clearMicState() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uid => $_getSZ(3);
  @$pb.TagNumber(4)
  set uid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userName => $_getSZ(4);
  @$pb.TagNumber(5)
  set userName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserName() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userAvatar => $_getSZ(5);
  @$pb.TagNumber(6)
  set userAvatar($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserAvatar() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserAvatar() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get userNoble => $_getIZ(6);
  @$pb.TagNumber(7)
  set userNoble($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserNoble() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserNoble() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get userVip => $_getIZ(7);
  @$pb.TagNumber(8)
  set userVip($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserVip() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserVip() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get avatarBox => $_getSZ(8);
  @$pb.TagNumber(9)
  set avatarBox($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAvatarBox() => $_has(8);
  @$pb.TagNumber(9)
  void clearAvatarBox() => clearField(9);
}

class WaitQueue_User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WaitQueue.User', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'gender')
    ..aOS(4, 'avatar')
    ..a<$core.int>(5, 'noble', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'vip', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'seatIdx', $pb.PbFieldType.O3)
    ..a<$core.int>(8, 'timestamp', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WaitQueue_User._() : super();
  factory WaitQueue_User() => create();
  factory WaitQueue_User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitQueue_User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WaitQueue_User clone() => WaitQueue_User()..mergeFromMessage(this);
  WaitQueue_User copyWith(void Function(WaitQueue_User) updates) => super.copyWith((message) => updates(message as WaitQueue_User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WaitQueue_User create() => WaitQueue_User._();
  WaitQueue_User createEmptyInstance() => create();
  static $pb.PbList<WaitQueue_User> createRepeated() => $pb.PbList<WaitQueue_User>();
  @$core.pragma('dart2js:noInline')
  static WaitQueue_User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WaitQueue_User>(create);
  static WaitQueue_User _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get gender => $_getSZ(2);
  @$pb.TagNumber(3)
  set gender($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGender() => $_has(2);
  @$pb.TagNumber(3)
  void clearGender() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatar => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatar($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatar() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get noble => $_getIZ(4);
  @$pb.TagNumber(5)
  set noble($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNoble() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoble() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get vip => $_getIZ(5);
  @$pb.TagNumber(6)
  set vip($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVip() => $_has(5);
  @$pb.TagNumber(6)
  void clearVip() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get seatIdx => $_getIZ(6);
  @$pb.TagNumber(7)
  set seatIdx($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSeatIdx() => $_has(6);
  @$pb.TagNumber(7)
  void clearSeatIdx() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get timestamp => $_getIZ(7);
  @$pb.TagNumber(8)
  set timestamp($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);
}

class WaitQueue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WaitQueue', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'placeholder')
    ..m<$core.String, WaitQueue_User>(2, 'waitUsers', entryClassName: 'WaitQueue.WaitUsersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: WaitQueue_User.create, packageName: const $pb.PackageName('proto_def'))
    ..hasRequiredFields = false
  ;

  WaitQueue._() : super();
  factory WaitQueue() => create();
  factory WaitQueue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitQueue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WaitQueue clone() => WaitQueue()..mergeFromMessage(this);
  WaitQueue copyWith(void Function(WaitQueue) updates) => super.copyWith((message) => updates(message as WaitQueue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WaitQueue create() => WaitQueue._();
  WaitQueue createEmptyInstance() => create();
  static $pb.PbList<WaitQueue> createRepeated() => $pb.PbList<WaitQueue>();
  @$core.pragma('dart2js:noInline')
  static WaitQueue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WaitQueue>(create);
  static WaitQueue _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get placeholder => $_getSZ(0);
  @$pb.TagNumber(1)
  set placeholder($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaceholder() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaceholder() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, WaitQueue_User> get waitUsers => $_getMap(1);
}

class SeatFundControlReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatFundControlReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SeatFundControlReq_Cmd>(1, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: SeatFundControlReq_Cmd.UNK, valueOf: SeatFundControlReq_Cmd.valueOf, enumValues: SeatFundControlReq_Cmd.values)
    ..aOS(2, 'uid')
    ..aOS(3, 'token')
    ..a<$core.int>(4, 'roomId', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'seatIdx', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SeatFundControlReq._() : super();
  factory SeatFundControlReq() => create();
  factory SeatFundControlReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatFundControlReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatFundControlReq clone() => SeatFundControlReq()..mergeFromMessage(this);
  SeatFundControlReq copyWith(void Function(SeatFundControlReq) updates) => super.copyWith((message) => updates(message as SeatFundControlReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatFundControlReq create() => SeatFundControlReq._();
  SeatFundControlReq createEmptyInstance() => create();
  static $pb.PbList<SeatFundControlReq> createRepeated() => $pb.PbList<SeatFundControlReq>();
  @$core.pragma('dart2js:noInline')
  static SeatFundControlReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatFundControlReq>(create);
  static SeatFundControlReq _defaultInstance;

  @$pb.TagNumber(1)
  SeatFundControlReq_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(SeatFundControlReq_Cmd v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get roomId => $_getIZ(3);
  @$pb.TagNumber(4)
  set roomId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get seatIdx => $_getIZ(4);
  @$pb.TagNumber(5)
  set seatIdx($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSeatIdx() => $_has(4);
  @$pb.TagNumber(5)
  void clearSeatIdx() => clearField(5);
}

class SeatFundControlResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatFundControlResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SeatFundControlResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SeatFundControlResp_Status.OK, valueOf: SeatFundControlResp_Status.valueOf, enumValues: SeatFundControlResp_Status.values)
    ..hasRequiredFields = false
  ;

  SeatFundControlResp._() : super();
  factory SeatFundControlResp() => create();
  factory SeatFundControlResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatFundControlResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatFundControlResp clone() => SeatFundControlResp()..mergeFromMessage(this);
  SeatFundControlResp copyWith(void Function(SeatFundControlResp) updates) => super.copyWith((message) => updates(message as SeatFundControlResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatFundControlResp create() => SeatFundControlResp._();
  SeatFundControlResp createEmptyInstance() => create();
  static $pb.PbList<SeatFundControlResp> createRepeated() => $pb.PbList<SeatFundControlResp>();
  @$core.pragma('dart2js:noInline')
  static SeatFundControlResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatFundControlResp>(create);
  static SeatFundControlResp _defaultInstance;

  @$pb.TagNumber(1)
  SeatFundControlResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SeatFundControlResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class SeatFundQueue_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatFundQueue.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'seatIdx', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'amount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SeatFundQueue_Item._() : super();
  factory SeatFundQueue_Item() => create();
  factory SeatFundQueue_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatFundQueue_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatFundQueue_Item clone() => SeatFundQueue_Item()..mergeFromMessage(this);
  SeatFundQueue_Item copyWith(void Function(SeatFundQueue_Item) updates) => super.copyWith((message) => updates(message as SeatFundQueue_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatFundQueue_Item create() => SeatFundQueue_Item._();
  SeatFundQueue_Item createEmptyInstance() => create();
  static $pb.PbList<SeatFundQueue_Item> createRepeated() => $pb.PbList<SeatFundQueue_Item>();
  @$core.pragma('dart2js:noInline')
  static SeatFundQueue_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatFundQueue_Item>(create);
  static SeatFundQueue_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get seatIdx => $_getIZ(0);
  @$pb.TagNumber(1)
  set seatIdx($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeatIdx() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeatIdx() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get amount => $_getIZ(1);
  @$pb.TagNumber(2)
  set amount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class SeatFundQueue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatFundQueue', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'placeholder')
    ..aOB(2, 'showFunds')
    ..m<$core.int, SeatFundQueue_Item>(3, 'seatFunds', entryClassName: 'SeatFundQueue.SeatFundsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: SeatFundQueue_Item.create, packageName: const $pb.PackageName('proto_def'))
    ..a<$core.int>(4, 'weekIncome', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SeatFundQueue._() : super();
  factory SeatFundQueue() => create();
  factory SeatFundQueue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatFundQueue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatFundQueue clone() => SeatFundQueue()..mergeFromMessage(this);
  SeatFundQueue copyWith(void Function(SeatFundQueue) updates) => super.copyWith((message) => updates(message as SeatFundQueue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatFundQueue create() => SeatFundQueue._();
  SeatFundQueue createEmptyInstance() => create();
  static $pb.PbList<SeatFundQueue> createRepeated() => $pb.PbList<SeatFundQueue>();
  @$core.pragma('dart2js:noInline')
  static SeatFundQueue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatFundQueue>(create);
  static SeatFundQueue _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get placeholder => $_getSZ(0);
  @$pb.TagNumber(1)
  set placeholder($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaceholder() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaceholder() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get showFunds => $_getBF(1);
  @$pb.TagNumber(2)
  set showFunds($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowFunds() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowFunds() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.int, SeatFundQueue_Item> get seatFunds => $_getMap(2);

  @$pb.TagNumber(4)
  $core.int get weekIncome => $_getIZ(3);
  @$pb.TagNumber(4)
  set weekIncome($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWeekIncome() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeekIncome() => clearField(4);
}

class SeatDecoratorControlReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatDecoratorControlReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<SeatDecoratorControlReq_Cmd>(3, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: SeatDecoratorControlReq_Cmd.UNK, valueOf: SeatDecoratorControlReq_Cmd.valueOf, enumValues: SeatDecoratorControlReq_Cmd.values)
    ..a<$core.int>(4, 'roomId', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'seatIdx', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'category', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SeatDecoratorControlReq._() : super();
  factory SeatDecoratorControlReq() => create();
  factory SeatDecoratorControlReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatDecoratorControlReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatDecoratorControlReq clone() => SeatDecoratorControlReq()..mergeFromMessage(this);
  SeatDecoratorControlReq copyWith(void Function(SeatDecoratorControlReq) updates) => super.copyWith((message) => updates(message as SeatDecoratorControlReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatDecoratorControlReq create() => SeatDecoratorControlReq._();
  SeatDecoratorControlReq createEmptyInstance() => create();
  static $pb.PbList<SeatDecoratorControlReq> createRepeated() => $pb.PbList<SeatDecoratorControlReq>();
  @$core.pragma('dart2js:noInline')
  static SeatDecoratorControlReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatDecoratorControlReq>(create);
  static SeatDecoratorControlReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  SeatDecoratorControlReq_Cmd get cmd => $_getN(2);
  @$pb.TagNumber(3)
  set cmd(SeatDecoratorControlReq_Cmd v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCmd() => $_has(2);
  @$pb.TagNumber(3)
  void clearCmd() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get roomId => $_getIZ(3);
  @$pb.TagNumber(4)
  set roomId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get seatIdx => $_getIZ(4);
  @$pb.TagNumber(5)
  set seatIdx($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSeatIdx() => $_has(4);
  @$pb.TagNumber(5)
  void clearSeatIdx() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get category => $_getIZ(5);
  @$pb.TagNumber(6)
  set category($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategory() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategory() => clearField(6);
}

class SeatDecoratorControlResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SeatDecoratorControlResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SeatDecoratorControlResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SeatDecoratorControlResp_Status.OK, valueOf: SeatDecoratorControlResp_Status.valueOf, enumValues: SeatDecoratorControlResp_Status.values)
    ..hasRequiredFields = false
  ;

  SeatDecoratorControlResp._() : super();
  factory SeatDecoratorControlResp() => create();
  factory SeatDecoratorControlResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatDecoratorControlResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SeatDecoratorControlResp clone() => SeatDecoratorControlResp()..mergeFromMessage(this);
  SeatDecoratorControlResp copyWith(void Function(SeatDecoratorControlResp) updates) => super.copyWith((message) => updates(message as SeatDecoratorControlResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatDecoratorControlResp create() => SeatDecoratorControlResp._();
  SeatDecoratorControlResp createEmptyInstance() => create();
  static $pb.PbList<SeatDecoratorControlResp> createRepeated() => $pb.PbList<SeatDecoratorControlResp>();
  @$core.pragma('dart2js:noInline')
  static SeatDecoratorControlResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatDecoratorControlResp>(create);
  static SeatDecoratorControlResp _defaultInstance;

  @$pb.TagNumber(1)
  SeatDecoratorControlResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SeatDecoratorControlResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class KeepAliveRegister extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KeepAliveRegister', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'roomId')
    ..a<$core.int>(3, 'seatIdx', $pb.PbFieldType.O3)
    ..aOB(4, 'inWaitq')
    ..hasRequiredFields = false
  ;

  KeepAliveRegister._() : super();
  factory KeepAliveRegister() => create();
  factory KeepAliveRegister.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeepAliveRegister.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KeepAliveRegister clone() => KeepAliveRegister()..mergeFromMessage(this);
  KeepAliveRegister copyWith(void Function(KeepAliveRegister) updates) => super.copyWith((message) => updates(message as KeepAliveRegister));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeepAliveRegister create() => KeepAliveRegister._();
  KeepAliveRegister createEmptyInstance() => create();
  static $pb.PbList<KeepAliveRegister> createRepeated() => $pb.PbList<KeepAliveRegister>();
  @$core.pragma('dart2js:noInline')
  static KeepAliveRegister getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeepAliveRegister>(create);
  static KeepAliveRegister _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get seatIdx => $_getIZ(2);
  @$pb.TagNumber(3)
  set seatIdx($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeatIdx() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeatIdx() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get inWaitq => $_getBF(3);
  @$pb.TagNumber(4)
  set inWaitq($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInWaitq() => $_has(3);
  @$pb.TagNumber(4)
  void clearInWaitq() => clearField(4);
}

class OrderDispatchReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderDispatchReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'roomId')
    ..a<$core.int>(4, 'skillId', $pb.PbFieldType.O3)
    ..aOS(5, 'skillTitle')
    ..aOS(6, 'gender')
    ..aOS(7, 'comment')
    ..hasRequiredFields = false
  ;

  OrderDispatchReq._() : super();
  factory OrderDispatchReq() => create();
  factory OrderDispatchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderDispatchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderDispatchReq clone() => OrderDispatchReq()..mergeFromMessage(this);
  OrderDispatchReq copyWith(void Function(OrderDispatchReq) updates) => super.copyWith((message) => updates(message as OrderDispatchReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderDispatchReq create() => OrderDispatchReq._();
  OrderDispatchReq createEmptyInstance() => create();
  static $pb.PbList<OrderDispatchReq> createRepeated() => $pb.PbList<OrderDispatchReq>();
  @$core.pragma('dart2js:noInline')
  static OrderDispatchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderDispatchReq>(create);
  static OrderDispatchReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get roomId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get skillId => $_getIZ(3);
  @$pb.TagNumber(4)
  set skillId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSkillId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkillId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get skillTitle => $_getSZ(4);
  @$pb.TagNumber(5)
  set skillTitle($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSkillTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearSkillTitle() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get gender => $_getSZ(5);
  @$pb.TagNumber(6)
  set gender($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGender() => $_has(5);
  @$pb.TagNumber(6)
  void clearGender() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get comment => $_getSZ(6);
  @$pb.TagNumber(7)
  set comment($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasComment() => $_has(6);
  @$pb.TagNumber(7)
  void clearComment() => clearField(7);
}

class OrderDispatchResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderDispatchResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<OrderDispatchResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: OrderDispatchResp_STATUS.OK, valueOf: OrderDispatchResp_STATUS.valueOf, enumValues: OrderDispatchResp_STATUS.values)
    ..a<$core.int>(2, 'orderCount', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'expiresAt', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  OrderDispatchResp._() : super();
  factory OrderDispatchResp() => create();
  factory OrderDispatchResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderDispatchResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderDispatchResp clone() => OrderDispatchResp()..mergeFromMessage(this);
  OrderDispatchResp copyWith(void Function(OrderDispatchResp) updates) => super.copyWith((message) => updates(message as OrderDispatchResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderDispatchResp create() => OrderDispatchResp._();
  OrderDispatchResp createEmptyInstance() => create();
  static $pb.PbList<OrderDispatchResp> createRepeated() => $pb.PbList<OrderDispatchResp>();
  @$core.pragma('dart2js:noInline')
  static OrderDispatchResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderDispatchResp>(create);
  static OrderDispatchResp _defaultInstance;

  @$pb.TagNumber(1)
  OrderDispatchResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(OrderDispatchResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get orderCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set orderCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrderCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get expiresAt => $_getIZ(2);
  @$pb.TagNumber(3)
  set expiresAt($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpiresAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpiresAt() => clearField(3);
}

