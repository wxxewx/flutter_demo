///
//  Generated code. Do not modify.
//  source: shop_message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'shop_message.pbenum.dart';

export 'shop_message.pbenum.dart';

class StickersReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StickersReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StickersReq._() : super();
  factory StickersReq() => create();
  factory StickersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StickersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StickersReq clone() => StickersReq()..mergeFromMessage(this);
  StickersReq copyWith(void Function(StickersReq) updates) => super.copyWith((message) => updates(message as StickersReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StickersReq create() => StickersReq._();
  StickersReq createEmptyInstance() => create();
  static $pb.PbList<StickersReq> createRepeated() => $pb.PbList<StickersReq>();
  @$core.pragma('dart2js:noInline')
  static StickersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StickersReq>(create);
  static StickersReq _defaultInstance;
}

class Sticker extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Sticker', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'title')
    ..aOS(3, 'icon')
    ..hasRequiredFields = false
  ;

  Sticker._() : super();
  factory Sticker() => create();
  factory Sticker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sticker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Sticker clone() => Sticker()..mergeFromMessage(this);
  Sticker copyWith(void Function(Sticker) updates) => super.copyWith((message) => updates(message as Sticker));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sticker create() => Sticker._();
  Sticker createEmptyInstance() => create();
  static $pb.PbList<Sticker> createRepeated() => $pb.PbList<Sticker>();
  @$core.pragma('dart2js:noInline')
  static Sticker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sticker>(create);
  static Sticker _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);
}

class StickersResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StickersResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<Sticker>(1, 'stickers', $pb.PbFieldType.PM, subBuilder: Sticker.create)
    ..hasRequiredFields = false
  ;

  StickersResp._() : super();
  factory StickersResp() => create();
  factory StickersResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StickersResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  StickersResp clone() => StickersResp()..mergeFromMessage(this);
  StickersResp copyWith(void Function(StickersResp) updates) => super.copyWith((message) => updates(message as StickersResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StickersResp create() => StickersResp._();
  StickersResp createEmptyInstance() => create();
  static $pb.PbList<StickersResp> createRepeated() => $pb.PbList<StickersResp>();
  @$core.pragma('dart2js:noInline')
  static StickersResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StickersResp>(create);
  static StickersResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Sticker> get stickers => $_getList(0);
}

class Product extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Product', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'pid', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..aOS(3, 'icon')
    ..a<$core.int>(4, 'price', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'period', $pb.PbFieldType.O3)
    ..aOB(6, 'permanent')
    ..e<CATEGORY>(7, 'category', $pb.PbFieldType.OE, defaultOrMaker: CATEGORY.ALL, valueOf: CATEGORY.valueOf, enumValues: CATEGORY.values)
    ..e<PRODUCT_GRADE>(8, 'grade', $pb.PbFieldType.OE, defaultOrMaker: PRODUCT_GRADE.NONE, valueOf: PRODUCT_GRADE.valueOf, enumValues: PRODUCT_GRADE.values)
    ..a<$core.int>(9, 'priority', $pb.PbFieldType.O3)
    ..aOS(10, 'svgaUrl')
    ..a<$core.int>(11, 'svgaDuration', $pb.PbFieldType.O3)
    ..a<$core.int>(12, 'diamonds', $pb.PbFieldType.O3)
    ..aOS(13, 'description')
    ..aOB(14, 'forSale')
    ..hasRequiredFields = false
  ;

  Product._() : super();
  factory Product() => create();
  factory Product.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Product.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Product clone() => Product()..mergeFromMessage(this);
  Product copyWith(void Function(Product) updates) => super.copyWith((message) => updates(message as Product));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Product create() => Product._();
  Product createEmptyInstance() => create();
  static $pb.PbList<Product> createRepeated() => $pb.PbList<Product>();
  @$core.pragma('dart2js:noInline')
  static Product getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Product>(create);
  static Product _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pid => $_getIZ(0);
  @$pb.TagNumber(1)
  set pid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get price => $_getIZ(3);
  @$pb.TagNumber(4)
  set price($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get period => $_getIZ(4);
  @$pb.TagNumber(5)
  set period($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeriod() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeriod() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get permanent => $_getBF(5);
  @$pb.TagNumber(6)
  set permanent($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPermanent() => $_has(5);
  @$pb.TagNumber(6)
  void clearPermanent() => clearField(6);

  @$pb.TagNumber(7)
  CATEGORY get category => $_getN(6);
  @$pb.TagNumber(7)
  set category(CATEGORY v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCategory() => $_has(6);
  @$pb.TagNumber(7)
  void clearCategory() => clearField(7);

  @$pb.TagNumber(8)
  PRODUCT_GRADE get grade => $_getN(7);
  @$pb.TagNumber(8)
  set grade(PRODUCT_GRADE v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasGrade() => $_has(7);
  @$pb.TagNumber(8)
  void clearGrade() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get priority => $_getIZ(8);
  @$pb.TagNumber(9)
  set priority($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPriority() => $_has(8);
  @$pb.TagNumber(9)
  void clearPriority() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get svgaUrl => $_getSZ(9);
  @$pb.TagNumber(10)
  set svgaUrl($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSvgaUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearSvgaUrl() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get svgaDuration => $_getIZ(10);
  @$pb.TagNumber(11)
  set svgaDuration($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSvgaDuration() => $_has(10);
  @$pb.TagNumber(11)
  void clearSvgaDuration() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get diamonds => $_getIZ(11);
  @$pb.TagNumber(12)
  set diamonds($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDiamonds() => $_has(11);
  @$pb.TagNumber(12)
  void clearDiamonds() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get description => $_getSZ(12);
  @$pb.TagNumber(13)
  set description($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearDescription() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get forSale => $_getBF(13);
  @$pb.TagNumber(14)
  set forSale($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasForSale() => $_has(13);
  @$pb.TagNumber(14)
  void clearForSale() => clearField(14);
}

class ShopProductsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopProductsReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<CATEGORY>(1, 'category', $pb.PbFieldType.OE, defaultOrMaker: CATEGORY.ALL, valueOf: CATEGORY.valueOf, enumValues: CATEGORY.values)
    ..hasRequiredFields = false
  ;

  ShopProductsReq._() : super();
  factory ShopProductsReq() => create();
  factory ShopProductsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopProductsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopProductsReq clone() => ShopProductsReq()..mergeFromMessage(this);
  ShopProductsReq copyWith(void Function(ShopProductsReq) updates) => super.copyWith((message) => updates(message as ShopProductsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopProductsReq create() => ShopProductsReq._();
  ShopProductsReq createEmptyInstance() => create();
  static $pb.PbList<ShopProductsReq> createRepeated() => $pb.PbList<ShopProductsReq>();
  @$core.pragma('dart2js:noInline')
  static ShopProductsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopProductsReq>(create);
  static ShopProductsReq _defaultInstance;

  @$pb.TagNumber(1)
  CATEGORY get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(CATEGORY v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);
}

class ShopProductsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopProductsResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<Product>(1, 'products', $pb.PbFieldType.PM, subBuilder: Product.create)
    ..hasRequiredFields = false
  ;

  ShopProductsResp._() : super();
  factory ShopProductsResp() => create();
  factory ShopProductsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopProductsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopProductsResp clone() => ShopProductsResp()..mergeFromMessage(this);
  ShopProductsResp copyWith(void Function(ShopProductsResp) updates) => super.copyWith((message) => updates(message as ShopProductsResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopProductsResp create() => ShopProductsResp._();
  ShopProductsResp createEmptyInstance() => create();
  static $pb.PbList<ShopProductsResp> createRepeated() => $pb.PbList<ShopProductsResp>();
  @$core.pragma('dart2js:noInline')
  static ShopProductsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopProductsResp>(create);
  static ShopProductsResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Product> get products => $_getList(0);
}

class ShowListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShowListReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ShowListReq_Category>(1, 'category', $pb.PbFieldType.OE, defaultOrMaker: ShowListReq_Category.ALL, valueOf: ShowListReq_Category.valueOf, enumValues: ShowListReq_Category.values)
    ..hasRequiredFields = false
  ;

  ShowListReq._() : super();
  factory ShowListReq() => create();
  factory ShowListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShowListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShowListReq clone() => ShowListReq()..mergeFromMessage(this);
  ShowListReq copyWith(void Function(ShowListReq) updates) => super.copyWith((message) => updates(message as ShowListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShowListReq create() => ShowListReq._();
  ShowListReq createEmptyInstance() => create();
  static $pb.PbList<ShowListReq> createRepeated() => $pb.PbList<ShowListReq>();
  @$core.pragma('dart2js:noInline')
  static ShowListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShowListReq>(create);
  static ShowListReq _defaultInstance;

  @$pb.TagNumber(1)
  ShowListReq_Category get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(ShowListReq_Category v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);
}

class ShowListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShowListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<Product>(1, 'products', $pb.PbFieldType.PM, subBuilder: Product.create)
    ..hasRequiredFields = false
  ;

  ShowListResp._() : super();
  factory ShowListResp() => create();
  factory ShowListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShowListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShowListResp clone() => ShowListResp()..mergeFromMessage(this);
  ShowListResp copyWith(void Function(ShowListResp) updates) => super.copyWith((message) => updates(message as ShowListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShowListResp create() => ShowListResp._();
  ShowListResp createEmptyInstance() => create();
  static $pb.PbList<ShowListResp> createRepeated() => $pb.PbList<ShowListResp>();
  @$core.pragma('dart2js:noInline')
  static ShowListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShowListResp>(create);
  static ShowListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Product> get products => $_getList(0);
}

class MyShowReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyShowReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<ShowListReq_Category>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: ShowListReq_Category.ALL, valueOf: ShowListReq_Category.valueOf, enumValues: ShowListReq_Category.values)
    ..hasRequiredFields = false
  ;

  MyShowReq._() : super();
  factory MyShowReq() => create();
  factory MyShowReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyShowReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyShowReq clone() => MyShowReq()..mergeFromMessage(this);
  MyShowReq copyWith(void Function(MyShowReq) updates) => super.copyWith((message) => updates(message as MyShowReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyShowReq create() => MyShowReq._();
  MyShowReq createEmptyInstance() => create();
  static $pb.PbList<MyShowReq> createRepeated() => $pb.PbList<MyShowReq>();
  @$core.pragma('dart2js:noInline')
  static MyShowReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyShowReq>(create);
  static MyShowReq _defaultInstance;

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
  ShowListReq_Category get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(ShowListReq_Category v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class MyShowResp_Show extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyShowResp.Show', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'showId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'count', $pb.PbFieldType.O3)
    ..aOB(3, 'weared')
    ..aOS(4, 'expires')
    ..e<ShowListReq_Category>(5, 'category', $pb.PbFieldType.OE, defaultOrMaker: ShowListReq_Category.ALL, valueOf: ShowListReq_Category.valueOf, enumValues: ShowListReq_Category.values)
    ..hasRequiredFields = false
  ;

  MyShowResp_Show._() : super();
  factory MyShowResp_Show() => create();
  factory MyShowResp_Show.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyShowResp_Show.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyShowResp_Show clone() => MyShowResp_Show()..mergeFromMessage(this);
  MyShowResp_Show copyWith(void Function(MyShowResp_Show) updates) => super.copyWith((message) => updates(message as MyShowResp_Show));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyShowResp_Show create() => MyShowResp_Show._();
  MyShowResp_Show createEmptyInstance() => create();
  static $pb.PbList<MyShowResp_Show> createRepeated() => $pb.PbList<MyShowResp_Show>();
  @$core.pragma('dart2js:noInline')
  static MyShowResp_Show getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyShowResp_Show>(create);
  static MyShowResp_Show _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get showId => $_getIZ(0);
  @$pb.TagNumber(1)
  set showId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearShowId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get weared => $_getBF(2);
  @$pb.TagNumber(3)
  set weared($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeared() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeared() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get expires => $_getSZ(3);
  @$pb.TagNumber(4)
  set expires($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpires() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpires() => clearField(4);

  @$pb.TagNumber(5)
  ShowListReq_Category get category => $_getN(4);
  @$pb.TagNumber(5)
  set category(ShowListReq_Category v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategory() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategory() => clearField(5);
}

class MyShowResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyShowResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<MyShowResp_Show>(1, 'myShows', $pb.PbFieldType.PM, subBuilder: MyShowResp_Show.create)
    ..hasRequiredFields = false
  ;

  MyShowResp._() : super();
  factory MyShowResp() => create();
  factory MyShowResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyShowResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyShowResp clone() => MyShowResp()..mergeFromMessage(this);
  MyShowResp copyWith(void Function(MyShowResp) updates) => super.copyWith((message) => updates(message as MyShowResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyShowResp create() => MyShowResp._();
  MyShowResp createEmptyInstance() => create();
  static $pb.PbList<MyShowResp> createRepeated() => $pb.PbList<MyShowResp>();
  @$core.pragma('dart2js:noInline')
  static MyShowResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyShowResp>(create);
  static MyShowResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MyShowResp_Show> get myShows => $_getList(0);
}

class ShowCtrlReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShowCtrlReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ShowCtrlReq_Cmd>(1, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: ShowCtrlReq_Cmd.OFF, valueOf: ShowCtrlReq_Cmd.valueOf, enumValues: ShowCtrlReq_Cmd.values)
    ..aOS(2, 'uid')
    ..aOS(3, 'token')
    ..a<$core.int>(4, 'showId', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'seatIdx', $pb.PbFieldType.O3)
    ..aOS(6, 'roomId')
    ..hasRequiredFields = false
  ;

  ShowCtrlReq._() : super();
  factory ShowCtrlReq() => create();
  factory ShowCtrlReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShowCtrlReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShowCtrlReq clone() => ShowCtrlReq()..mergeFromMessage(this);
  ShowCtrlReq copyWith(void Function(ShowCtrlReq) updates) => super.copyWith((message) => updates(message as ShowCtrlReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShowCtrlReq create() => ShowCtrlReq._();
  ShowCtrlReq createEmptyInstance() => create();
  static $pb.PbList<ShowCtrlReq> createRepeated() => $pb.PbList<ShowCtrlReq>();
  @$core.pragma('dart2js:noInline')
  static ShowCtrlReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShowCtrlReq>(create);
  static ShowCtrlReq _defaultInstance;

  @$pb.TagNumber(1)
  ShowCtrlReq_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(ShowCtrlReq_Cmd v) { setField(1, v); }
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
  $core.int get showId => $_getIZ(3);
  @$pb.TagNumber(4)
  set showId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShowId() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get seatIdx => $_getIZ(4);
  @$pb.TagNumber(5)
  set seatIdx($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSeatIdx() => $_has(4);
  @$pb.TagNumber(5)
  void clearSeatIdx() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get roomId => $_getSZ(5);
  @$pb.TagNumber(6)
  set roomId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRoomId() => $_has(5);
  @$pb.TagNumber(6)
  void clearRoomId() => clearField(6);
}

class ShowCtrlResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShowCtrlResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ShowCtrlResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: ShowCtrlResp_Status.OK, valueOf: ShowCtrlResp_Status.valueOf, enumValues: ShowCtrlResp_Status.values)
    ..hasRequiredFields = false
  ;

  ShowCtrlResp._() : super();
  factory ShowCtrlResp() => create();
  factory ShowCtrlResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShowCtrlResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShowCtrlResp clone() => ShowCtrlResp()..mergeFromMessage(this);
  ShowCtrlResp copyWith(void Function(ShowCtrlResp) updates) => super.copyWith((message) => updates(message as ShowCtrlResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShowCtrlResp create() => ShowCtrlResp._();
  ShowCtrlResp createEmptyInstance() => create();
  static $pb.PbList<ShowCtrlResp> createRepeated() => $pb.PbList<ShowCtrlResp>();
  @$core.pragma('dart2js:noInline')
  static ShowCtrlResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShowCtrlResp>(create);
  static ShowCtrlResp _defaultInstance;

  @$pb.TagNumber(1)
  ShowCtrlResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ShowCtrlResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class OpenBoxReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpenBoxReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<PRODUCT_GRADE>(3, 'boxGrade', $pb.PbFieldType.OE, defaultOrMaker: PRODUCT_GRADE.NONE, valueOf: PRODUCT_GRADE.valueOf, enumValues: PRODUCT_GRADE.values)
    ..aOS(4, 'roomId')
    ..a<$core.int>(5, 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  OpenBoxReq._() : super();
  factory OpenBoxReq() => create();
  factory OpenBoxReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenBoxReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OpenBoxReq clone() => OpenBoxReq()..mergeFromMessage(this);
  OpenBoxReq copyWith(void Function(OpenBoxReq) updates) => super.copyWith((message) => updates(message as OpenBoxReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenBoxReq create() => OpenBoxReq._();
  OpenBoxReq createEmptyInstance() => create();
  static $pb.PbList<OpenBoxReq> createRepeated() => $pb.PbList<OpenBoxReq>();
  @$core.pragma('dart2js:noInline')
  static OpenBoxReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenBoxReq>(create);
  static OpenBoxReq _defaultInstance;

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
  PRODUCT_GRADE get boxGrade => $_getN(2);
  @$pb.TagNumber(3)
  set boxGrade(PRODUCT_GRADE v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBoxGrade() => $_has(2);
  @$pb.TagNumber(3)
  void clearBoxGrade() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get roomId => $_getSZ(3);
  @$pb.TagNumber(4)
  set roomId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get count => $_getIZ(4);
  @$pb.TagNumber(5)
  set count($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearCount() => clearField(5);
}

class OpenBoxResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpenBoxResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'icon')
    ..hasRequiredFields = false
  ;

  OpenBoxResp_Item._() : super();
  factory OpenBoxResp_Item() => create();
  factory OpenBoxResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenBoxResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OpenBoxResp_Item clone() => OpenBoxResp_Item()..mergeFromMessage(this);
  OpenBoxResp_Item copyWith(void Function(OpenBoxResp_Item) updates) => super.copyWith((message) => updates(message as OpenBoxResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenBoxResp_Item create() => OpenBoxResp_Item._();
  OpenBoxResp_Item createEmptyInstance() => create();
  static $pb.PbList<OpenBoxResp_Item> createRepeated() => $pb.PbList<OpenBoxResp_Item>();
  @$core.pragma('dart2js:noInline')
  static OpenBoxResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenBoxResp_Item>(create);
  static OpenBoxResp_Item _defaultInstance;

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
}

class OpenBoxResp_RewardBox extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpenBoxResp.RewardBox', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'count', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'productId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  OpenBoxResp_RewardBox._() : super();
  factory OpenBoxResp_RewardBox() => create();
  factory OpenBoxResp_RewardBox.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenBoxResp_RewardBox.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OpenBoxResp_RewardBox clone() => OpenBoxResp_RewardBox()..mergeFromMessage(this);
  OpenBoxResp_RewardBox copyWith(void Function(OpenBoxResp_RewardBox) updates) => super.copyWith((message) => updates(message as OpenBoxResp_RewardBox));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenBoxResp_RewardBox create() => OpenBoxResp_RewardBox._();
  OpenBoxResp_RewardBox createEmptyInstance() => create();
  static $pb.PbList<OpenBoxResp_RewardBox> createRepeated() => $pb.PbList<OpenBoxResp_RewardBox>();
  @$core.pragma('dart2js:noInline')
  static OpenBoxResp_RewardBox getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenBoxResp_RewardBox>(create);
  static OpenBoxResp_RewardBox _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(3)
  $core.int get productId => $_getIZ(1);
  @$pb.TagNumber(3)
  set productId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasProductId() => $_has(1);
  @$pb.TagNumber(3)
  void clearProductId() => clearField(3);
}

class OpenBoxResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpenBoxResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<OpenBoxResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: OpenBoxResp_STATUS.OK, valueOf: OpenBoxResp_STATUS.valueOf, enumValues: OpenBoxResp_STATUS.values)
    ..pc<OpenBoxResp_Item>(2, 'items', $pb.PbFieldType.PM, subBuilder: OpenBoxResp_Item.create)
    ..aOM<OpenBoxResp_RewardBox>(3, 'reward', subBuilder: OpenBoxResp_RewardBox.create)
    ..hasRequiredFields = false
  ;

  OpenBoxResp._() : super();
  factory OpenBoxResp() => create();
  factory OpenBoxResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenBoxResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OpenBoxResp clone() => OpenBoxResp()..mergeFromMessage(this);
  OpenBoxResp copyWith(void Function(OpenBoxResp) updates) => super.copyWith((message) => updates(message as OpenBoxResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenBoxResp create() => OpenBoxResp._();
  OpenBoxResp createEmptyInstance() => create();
  static $pb.PbList<OpenBoxResp> createRepeated() => $pb.PbList<OpenBoxResp>();
  @$core.pragma('dart2js:noInline')
  static OpenBoxResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenBoxResp>(create);
  static OpenBoxResp _defaultInstance;

  @$pb.TagNumber(1)
  OpenBoxResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(OpenBoxResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<OpenBoxResp_Item> get items => $_getList(1);

  @$pb.TagNumber(3)
  OpenBoxResp_RewardBox get reward => $_getN(2);
  @$pb.TagNumber(3)
  set reward(OpenBoxResp_RewardBox v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasReward() => $_has(2);
  @$pb.TagNumber(3)
  void clearReward() => clearField(3);
  @$pb.TagNumber(3)
  OpenBoxResp_RewardBox ensureReward() => $_ensure(2);
}

class SendGiftReq_Gift extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendGiftReq.Gift', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'toUid')
    ..aOS(2, 'toName')
    ..a<$core.int>(3, 'giftId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'count', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'seatIdx', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SendGiftReq_Gift._() : super();
  factory SendGiftReq_Gift() => create();
  factory SendGiftReq_Gift.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendGiftReq_Gift.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendGiftReq_Gift clone() => SendGiftReq_Gift()..mergeFromMessage(this);
  SendGiftReq_Gift copyWith(void Function(SendGiftReq_Gift) updates) => super.copyWith((message) => updates(message as SendGiftReq_Gift));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendGiftReq_Gift create() => SendGiftReq_Gift._();
  SendGiftReq_Gift createEmptyInstance() => create();
  static $pb.PbList<SendGiftReq_Gift> createRepeated() => $pb.PbList<SendGiftReq_Gift>();
  @$core.pragma('dart2js:noInline')
  static SendGiftReq_Gift getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendGiftReq_Gift>(create);
  static SendGiftReq_Gift _defaultInstance;

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
  $core.int get seatIdx => $_getIZ(4);
  @$pb.TagNumber(5)
  set seatIdx($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSeatIdx() => $_has(4);
  @$pb.TagNumber(5)
  void clearSeatIdx() => clearField(5);
}

class SendGiftReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendGiftReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'roomId')
    ..pc<SendGiftReq_Gift>(4, 'gifts', $pb.PbFieldType.PM, subBuilder: SendGiftReq_Gift.create)
    ..e<SendGiftReq_Context>(5, 'context', $pb.PbFieldType.OE, defaultOrMaker: SendGiftReq_Context.CHATROOM, valueOf: SendGiftReq_Context.valueOf, enumValues: SendGiftReq_Context.values)
    ..hasRequiredFields = false
  ;

  SendGiftReq._() : super();
  factory SendGiftReq() => create();
  factory SendGiftReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendGiftReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendGiftReq clone() => SendGiftReq()..mergeFromMessage(this);
  SendGiftReq copyWith(void Function(SendGiftReq) updates) => super.copyWith((message) => updates(message as SendGiftReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendGiftReq create() => SendGiftReq._();
  SendGiftReq createEmptyInstance() => create();
  static $pb.PbList<SendGiftReq> createRepeated() => $pb.PbList<SendGiftReq>();
  @$core.pragma('dart2js:noInline')
  static SendGiftReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendGiftReq>(create);
  static SendGiftReq _defaultInstance;

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
  $core.List<SendGiftReq_Gift> get gifts => $_getList(3);

  @$pb.TagNumber(5)
  SendGiftReq_Context get context => $_getN(4);
  @$pb.TagNumber(5)
  set context(SendGiftReq_Context v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasContext() => $_has(4);
  @$pb.TagNumber(5)
  void clearContext() => clearField(5);
}

class SendGiftResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendGiftResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SendGiftResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SendGiftResp_STATUS.OK, valueOf: SendGiftResp_STATUS.valueOf, enumValues: SendGiftResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  SendGiftResp._() : super();
  factory SendGiftResp() => create();
  factory SendGiftResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendGiftResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SendGiftResp clone() => SendGiftResp()..mergeFromMessage(this);
  SendGiftResp copyWith(void Function(SendGiftResp) updates) => super.copyWith((message) => updates(message as SendGiftResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendGiftResp create() => SendGiftResp._();
  SendGiftResp createEmptyInstance() => create();
  static $pb.PbList<SendGiftResp> createRepeated() => $pb.PbList<SendGiftResp>();
  @$core.pragma('dart2js:noInline')
  static SendGiftResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendGiftResp>(create);
  static SendGiftResp _defaultInstance;

  @$pb.TagNumber(1)
  SendGiftResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SendGiftResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class DonateGiftReq_User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DonateGiftReq.User', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'seatIdx', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DonateGiftReq_User._() : super();
  factory DonateGiftReq_User() => create();
  factory DonateGiftReq_User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DonateGiftReq_User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DonateGiftReq_User clone() => DonateGiftReq_User()..mergeFromMessage(this);
  DonateGiftReq_User copyWith(void Function(DonateGiftReq_User) updates) => super.copyWith((message) => updates(message as DonateGiftReq_User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DonateGiftReq_User create() => DonateGiftReq_User._();
  DonateGiftReq_User createEmptyInstance() => create();
  static $pb.PbList<DonateGiftReq_User> createRepeated() => $pb.PbList<DonateGiftReq_User>();
  @$core.pragma('dart2js:noInline')
  static DonateGiftReq_User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DonateGiftReq_User>(create);
  static DonateGiftReq_User _defaultInstance;

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
  $core.int get seatIdx => $_getIZ(2);
  @$pb.TagNumber(3)
  set seatIdx($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeatIdx() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeatIdx() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get count => $_getIZ(3);
  @$pb.TagNumber(4)
  set count($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);
}

class DonateGiftReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DonateGiftReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'roomId')
    ..a<$core.int>(4, 'productId', $pb.PbFieldType.O3)
    ..pc<DonateGiftReq_User>(5, 'toUsers', $pb.PbFieldType.PM, subBuilder: DonateGiftReq_User.create)
    ..hasRequiredFields = false
  ;

  DonateGiftReq._() : super();
  factory DonateGiftReq() => create();
  factory DonateGiftReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DonateGiftReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DonateGiftReq clone() => DonateGiftReq()..mergeFromMessage(this);
  DonateGiftReq copyWith(void Function(DonateGiftReq) updates) => super.copyWith((message) => updates(message as DonateGiftReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DonateGiftReq create() => DonateGiftReq._();
  DonateGiftReq createEmptyInstance() => create();
  static $pb.PbList<DonateGiftReq> createRepeated() => $pb.PbList<DonateGiftReq>();
  @$core.pragma('dart2js:noInline')
  static DonateGiftReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DonateGiftReq>(create);
  static DonateGiftReq _defaultInstance;

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
  $core.int get productId => $_getIZ(3);
  @$pb.TagNumber(4)
  set productId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProductId() => $_has(3);
  @$pb.TagNumber(4)
  void clearProductId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<DonateGiftReq_User> get toUsers => $_getList(4);
}

class DonateGiftResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DonateGiftResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<SendGiftResp_STATUS>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: SendGiftResp_STATUS.OK, valueOf: SendGiftResp_STATUS.valueOf, enumValues: SendGiftResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  DonateGiftResp._() : super();
  factory DonateGiftResp() => create();
  factory DonateGiftResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DonateGiftResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DonateGiftResp clone() => DonateGiftResp()..mergeFromMessage(this);
  DonateGiftResp copyWith(void Function(DonateGiftResp) updates) => super.copyWith((message) => updates(message as DonateGiftResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DonateGiftResp create() => DonateGiftResp._();
  DonateGiftResp createEmptyInstance() => create();
  static $pb.PbList<DonateGiftResp> createRepeated() => $pb.PbList<DonateGiftResp>();
  @$core.pragma('dart2js:noInline')
  static DonateGiftResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DonateGiftResp>(create);
  static DonateGiftResp _defaultInstance;

  @$pb.TagNumber(1)
  SendGiftResp_STATUS get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SendGiftResp_STATUS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class HappyPayReq_User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HappyPayReq.User', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'seatIdx', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  HappyPayReq_User._() : super();
  factory HappyPayReq_User() => create();
  factory HappyPayReq_User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HappyPayReq_User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HappyPayReq_User clone() => HappyPayReq_User()..mergeFromMessage(this);
  HappyPayReq_User copyWith(void Function(HappyPayReq_User) updates) => super.copyWith((message) => updates(message as HappyPayReq_User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HappyPayReq_User create() => HappyPayReq_User._();
  HappyPayReq_User createEmptyInstance() => create();
  static $pb.PbList<HappyPayReq_User> createRepeated() => $pb.PbList<HappyPayReq_User>();
  @$core.pragma('dart2js:noInline')
  static HappyPayReq_User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HappyPayReq_User>(create);
  static HappyPayReq_User _defaultInstance;

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
  $core.int get seatIdx => $_getIZ(2);
  @$pb.TagNumber(3)
  set seatIdx($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeatIdx() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeatIdx() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get count => $_getIZ(3);
  @$pb.TagNumber(4)
  set count($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);
}

class HappyPayReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HappyPayReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<HappyPayReq_Channel>(3, 'channel', $pb.PbFieldType.OE, defaultOrMaker: HappyPayReq_Channel.BALANCE, valueOf: HappyPayReq_Channel.valueOf, enumValues: HappyPayReq_Channel.values)
    ..a<$core.int>(4, 'productId', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'count', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'couponId', $pb.PbFieldType.O3)
    ..e<HappyPayReq_Usage>(7, 'usage', $pb.PbFieldType.OE, defaultOrMaker: HappyPayReq_Usage.Buy, valueOf: HappyPayReq_Usage.valueOf, enumValues: HappyPayReq_Usage.values)
    ..pc<HappyPayReq_User>(8, 'toUsers', $pb.PbFieldType.PM, subBuilder: HappyPayReq_User.create)
    ..aOS(9, 'roomId')
    ..e<PRODUCT_GRADE>(10, 'grade', $pb.PbFieldType.OE, defaultOrMaker: PRODUCT_GRADE.NONE, valueOf: PRODUCT_GRADE.valueOf, enumValues: PRODUCT_GRADE.values)
    ..hasRequiredFields = false
  ;

  HappyPayReq._() : super();
  factory HappyPayReq() => create();
  factory HappyPayReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HappyPayReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HappyPayReq clone() => HappyPayReq()..mergeFromMessage(this);
  HappyPayReq copyWith(void Function(HappyPayReq) updates) => super.copyWith((message) => updates(message as HappyPayReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HappyPayReq create() => HappyPayReq._();
  HappyPayReq createEmptyInstance() => create();
  static $pb.PbList<HappyPayReq> createRepeated() => $pb.PbList<HappyPayReq>();
  @$core.pragma('dart2js:noInline')
  static HappyPayReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HappyPayReq>(create);
  static HappyPayReq _defaultInstance;

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
  HappyPayReq_Channel get channel => $_getN(2);
  @$pb.TagNumber(3)
  set channel(HappyPayReq_Channel v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get productId => $_getIZ(3);
  @$pb.TagNumber(4)
  set productId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProductId() => $_has(3);
  @$pb.TagNumber(4)
  void clearProductId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get count => $_getIZ(4);
  @$pb.TagNumber(5)
  set count($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get couponId => $_getIZ(5);
  @$pb.TagNumber(6)
  set couponId($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCouponId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCouponId() => clearField(6);

  @$pb.TagNumber(7)
  HappyPayReq_Usage get usage => $_getN(6);
  @$pb.TagNumber(7)
  set usage(HappyPayReq_Usage v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUsage() => $_has(6);
  @$pb.TagNumber(7)
  void clearUsage() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<HappyPayReq_User> get toUsers => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get roomId => $_getSZ(8);
  @$pb.TagNumber(9)
  set roomId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRoomId() => $_has(8);
  @$pb.TagNumber(9)
  void clearRoomId() => clearField(9);

  @$pb.TagNumber(10)
  PRODUCT_GRADE get grade => $_getN(9);
  @$pb.TagNumber(10)
  set grade(PRODUCT_GRADE v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasGrade() => $_has(9);
  @$pb.TagNumber(10)
  void clearGrade() => clearField(10);
}

class HappyPayResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HappyPayResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<HappyPayResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: HappyPayResp_Status.OK, valueOf: HappyPayResp_Status.valueOf, enumValues: HappyPayResp_Status.values)
    ..aOS(2, 'jsonStr')
    ..aOS(3, 'orderNo')
    ..hasRequiredFields = false
  ;

  HappyPayResp._() : super();
  factory HappyPayResp() => create();
  factory HappyPayResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HappyPayResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HappyPayResp clone() => HappyPayResp()..mergeFromMessage(this);
  HappyPayResp copyWith(void Function(HappyPayResp) updates) => super.copyWith((message) => updates(message as HappyPayResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HappyPayResp create() => HappyPayResp._();
  HappyPayResp createEmptyInstance() => create();
  static $pb.PbList<HappyPayResp> createRepeated() => $pb.PbList<HappyPayResp>();
  @$core.pragma('dart2js:noInline')
  static HappyPayResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HappyPayResp>(create);
  static HappyPayResp _defaultInstance;

  @$pb.TagNumber(1)
  HappyPayResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(HappyPayResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jsonStr => $_getSZ(1);
  @$pb.TagNumber(2)
  set jsonStr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJsonStr() => $_has(1);
  @$pb.TagNumber(2)
  void clearJsonStr() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orderNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderNo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderNo() => clearField(3);
}

class BatchNumResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BatchNumResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..p<$core.int>(1, 'batchNums', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  BatchNumResp._() : super();
  factory BatchNumResp() => create();
  factory BatchNumResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchNumResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BatchNumResp clone() => BatchNumResp()..mergeFromMessage(this);
  BatchNumResp copyWith(void Function(BatchNumResp) updates) => super.copyWith((message) => updates(message as BatchNumResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BatchNumResp create() => BatchNumResp._();
  BatchNumResp createEmptyInstance() => create();
  static $pb.PbList<BatchNumResp> createRepeated() => $pb.PbList<BatchNumResp>();
  @$core.pragma('dart2js:noInline')
  static BatchNumResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchNumResp>(create);
  static BatchNumResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get batchNums => $_getList(0);
}

class AccountRechargeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountRechargeReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..a<$core.int>(3, 'amount', $pb.PbFieldType.O3)
    ..e<OS>(4, 'os', $pb.PbFieldType.OE, defaultOrMaker: OS.OS_UNK, valueOf: OS.valueOf, enumValues: OS.values)
    ..e<PayChannel>(5, 'channel', $pb.PbFieldType.OE, defaultOrMaker: PayChannel.BALANCE, valueOf: PayChannel.valueOf, enumValues: PayChannel.values)
    ..hasRequiredFields = false
  ;

  AccountRechargeReq._() : super();
  factory AccountRechargeReq() => create();
  factory AccountRechargeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountRechargeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountRechargeReq clone() => AccountRechargeReq()..mergeFromMessage(this);
  AccountRechargeReq copyWith(void Function(AccountRechargeReq) updates) => super.copyWith((message) => updates(message as AccountRechargeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountRechargeReq create() => AccountRechargeReq._();
  AccountRechargeReq createEmptyInstance() => create();
  static $pb.PbList<AccountRechargeReq> createRepeated() => $pb.PbList<AccountRechargeReq>();
  @$core.pragma('dart2js:noInline')
  static AccountRechargeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountRechargeReq>(create);
  static AccountRechargeReq _defaultInstance;

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
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  OS get os => $_getN(3);
  @$pb.TagNumber(4)
  set os(OS v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOs() => $_has(3);
  @$pb.TagNumber(4)
  void clearOs() => clearField(4);

  @$pb.TagNumber(5)
  PayChannel get channel => $_getN(4);
  @$pb.TagNumber(5)
  set channel(PayChannel v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasChannel() => $_has(4);
  @$pb.TagNumber(5)
  void clearChannel() => clearField(5);
}

class AccountRechargeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountRechargeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<AccountRechargeResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: AccountRechargeResp_Status.OK, valueOf: AccountRechargeResp_Status.valueOf, enumValues: AccountRechargeResp_Status.values)
    ..aOS(2, 'jsonStr')
    ..aOS(3, 'orderNo')
    ..hasRequiredFields = false
  ;

  AccountRechargeResp._() : super();
  factory AccountRechargeResp() => create();
  factory AccountRechargeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountRechargeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountRechargeResp clone() => AccountRechargeResp()..mergeFromMessage(this);
  AccountRechargeResp copyWith(void Function(AccountRechargeResp) updates) => super.copyWith((message) => updates(message as AccountRechargeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountRechargeResp create() => AccountRechargeResp._();
  AccountRechargeResp createEmptyInstance() => create();
  static $pb.PbList<AccountRechargeResp> createRepeated() => $pb.PbList<AccountRechargeResp>();
  @$core.pragma('dart2js:noInline')
  static AccountRechargeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountRechargeResp>(create);
  static AccountRechargeResp _defaultInstance;

  @$pb.TagNumber(1)
  AccountRechargeResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(AccountRechargeResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jsonStr => $_getSZ(1);
  @$pb.TagNumber(2)
  set jsonStr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJsonStr() => $_has(1);
  @$pb.TagNumber(2)
  void clearJsonStr() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orderNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderNo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderNo() => clearField(3);
}

class RechargeVerifyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RechargeVerifyReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..aOS(3, 'receipt')
    ..aOS(4, 'orderNo')
    ..hasRequiredFields = false
  ;

  RechargeVerifyReq._() : super();
  factory RechargeVerifyReq() => create();
  factory RechargeVerifyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RechargeVerifyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RechargeVerifyReq clone() => RechargeVerifyReq()..mergeFromMessage(this);
  RechargeVerifyReq copyWith(void Function(RechargeVerifyReq) updates) => super.copyWith((message) => updates(message as RechargeVerifyReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RechargeVerifyReq create() => RechargeVerifyReq._();
  RechargeVerifyReq createEmptyInstance() => create();
  static $pb.PbList<RechargeVerifyReq> createRepeated() => $pb.PbList<RechargeVerifyReq>();
  @$core.pragma('dart2js:noInline')
  static RechargeVerifyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RechargeVerifyReq>(create);
  static RechargeVerifyReq _defaultInstance;

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
  $core.String get receipt => $_getSZ(2);
  @$pb.TagNumber(3)
  set receipt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceipt() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceipt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get orderNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set orderNo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrderNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrderNo() => clearField(4);
}

class RechargeVerifyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RechargeVerifyResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RechargeVerifyResp._() : super();
  factory RechargeVerifyResp() => create();
  factory RechargeVerifyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RechargeVerifyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RechargeVerifyResp clone() => RechargeVerifyResp()..mergeFromMessage(this);
  RechargeVerifyResp copyWith(void Function(RechargeVerifyResp) updates) => super.copyWith((message) => updates(message as RechargeVerifyResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RechargeVerifyResp create() => RechargeVerifyResp._();
  RechargeVerifyResp createEmptyInstance() => create();
  static $pb.PbList<RechargeVerifyResp> createRepeated() => $pb.PbList<RechargeVerifyResp>();
  @$core.pragma('dart2js:noInline')
  static RechargeVerifyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RechargeVerifyResp>(create);
  static RechargeVerifyResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class AccountWithdrawReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountWithdrawReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..a<$core.int>(3, 'amount', $pb.PbFieldType.O3)
    ..e<AccountWithdrawReq_WithDrawChannel>(4, 'channel', $pb.PbFieldType.OE, defaultOrMaker: AccountWithdrawReq_WithDrawChannel.UNK, valueOf: AccountWithdrawReq_WithDrawChannel.valueOf, enumValues: AccountWithdrawReq_WithDrawChannel.values)
    ..a<$core.int>(5, 'applyId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AccountWithdrawReq._() : super();
  factory AccountWithdrawReq() => create();
  factory AccountWithdrawReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountWithdrawReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountWithdrawReq clone() => AccountWithdrawReq()..mergeFromMessage(this);
  AccountWithdrawReq copyWith(void Function(AccountWithdrawReq) updates) => super.copyWith((message) => updates(message as AccountWithdrawReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountWithdrawReq create() => AccountWithdrawReq._();
  AccountWithdrawReq createEmptyInstance() => create();
  static $pb.PbList<AccountWithdrawReq> createRepeated() => $pb.PbList<AccountWithdrawReq>();
  @$core.pragma('dart2js:noInline')
  static AccountWithdrawReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountWithdrawReq>(create);
  static AccountWithdrawReq _defaultInstance;

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
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  AccountWithdrawReq_WithDrawChannel get channel => $_getN(3);
  @$pb.TagNumber(4)
  set channel(AccountWithdrawReq_WithDrawChannel v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasChannel() => $_has(3);
  @$pb.TagNumber(4)
  void clearChannel() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get applyId => $_getIZ(4);
  @$pb.TagNumber(5)
  set applyId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasApplyId() => $_has(4);
  @$pb.TagNumber(5)
  void clearApplyId() => clearField(5);
}

class AccountWithdrawResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountWithdrawResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<AccountWithdrawResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: AccountWithdrawResp_Status.OK, valueOf: AccountWithdrawResp_Status.valueOf, enumValues: AccountWithdrawResp_Status.values)
    ..hasRequiredFields = false
  ;

  AccountWithdrawResp._() : super();
  factory AccountWithdrawResp() => create();
  factory AccountWithdrawResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountWithdrawResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountWithdrawResp clone() => AccountWithdrawResp()..mergeFromMessage(this);
  AccountWithdrawResp copyWith(void Function(AccountWithdrawResp) updates) => super.copyWith((message) => updates(message as AccountWithdrawResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountWithdrawResp create() => AccountWithdrawResp._();
  AccountWithdrawResp createEmptyInstance() => create();
  static $pb.PbList<AccountWithdrawResp> createRepeated() => $pb.PbList<AccountWithdrawResp>();
  @$core.pragma('dart2js:noInline')
  static AccountWithdrawResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountWithdrawResp>(create);
  static AccountWithdrawResp _defaultInstance;

  @$pb.TagNumber(1)
  AccountWithdrawResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(AccountWithdrawResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class WithdrawQueryReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WithdrawQueryReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  WithdrawQueryReq._() : super();
  factory WithdrawQueryReq() => create();
  factory WithdrawQueryReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawQueryReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WithdrawQueryReq clone() => WithdrawQueryReq()..mergeFromMessage(this);
  WithdrawQueryReq copyWith(void Function(WithdrawQueryReq) updates) => super.copyWith((message) => updates(message as WithdrawQueryReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawQueryReq create() => WithdrawQueryReq._();
  WithdrawQueryReq createEmptyInstance() => create();
  static $pb.PbList<WithdrawQueryReq> createRepeated() => $pb.PbList<WithdrawQueryReq>();
  @$core.pragma('dart2js:noInline')
  static WithdrawQueryReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawQueryReq>(create);
  static WithdrawQueryReq _defaultInstance;

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
}

class WithdrawQueryResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WithdrawQueryResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<WithdrawQueryResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: WithdrawQueryResp_Status.OK, valueOf: WithdrawQueryResp_Status.valueOf, enumValues: WithdrawQueryResp_Status.values)
    ..e<WithdrawQueryResp_State>(2, 'state', $pb.PbFieldType.OE, defaultOrMaker: WithdrawQueryResp_State.STATE_UNK, valueOf: WithdrawQueryResp_State.valueOf, enumValues: WithdrawQueryResp_State.values)
    ..a<$core.int>(3, 'applyId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'amount', $pb.PbFieldType.O3)
    ..aOS(5, 'date')
    ..aOS(6, 'comment')
    ..hasRequiredFields = false
  ;

  WithdrawQueryResp._() : super();
  factory WithdrawQueryResp() => create();
  factory WithdrawQueryResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawQueryResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WithdrawQueryResp clone() => WithdrawQueryResp()..mergeFromMessage(this);
  WithdrawQueryResp copyWith(void Function(WithdrawQueryResp) updates) => super.copyWith((message) => updates(message as WithdrawQueryResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawQueryResp create() => WithdrawQueryResp._();
  WithdrawQueryResp createEmptyInstance() => create();
  static $pb.PbList<WithdrawQueryResp> createRepeated() => $pb.PbList<WithdrawQueryResp>();
  @$core.pragma('dart2js:noInline')
  static WithdrawQueryResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawQueryResp>(create);
  static WithdrawQueryResp _defaultInstance;

  @$pb.TagNumber(1)
  WithdrawQueryResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(WithdrawQueryResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  WithdrawQueryResp_State get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(WithdrawQueryResp_State v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get applyId => $_getIZ(2);
  @$pb.TagNumber(3)
  set applyId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApplyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearApplyId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get amount => $_getIZ(3);
  @$pb.TagNumber(4)
  set amount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get date => $_getSZ(4);
  @$pb.TagNumber(5)
  set date($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get comment => $_getSZ(5);
  @$pb.TagNumber(6)
  set comment($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasComment() => $_has(5);
  @$pb.TagNumber(6)
  void clearComment() => clearField(6);
}

class BankListResp_Bank extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankListResp.Bank', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'bankId', $pb.PbFieldType.O3)
    ..aOS(2, 'bankName')
    ..a<$core.int>(3, 'withdrawFee', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BankListResp_Bank._() : super();
  factory BankListResp_Bank() => create();
  factory BankListResp_Bank.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankListResp_Bank.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BankListResp_Bank clone() => BankListResp_Bank()..mergeFromMessage(this);
  BankListResp_Bank copyWith(void Function(BankListResp_Bank) updates) => super.copyWith((message) => updates(message as BankListResp_Bank));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankListResp_Bank create() => BankListResp_Bank._();
  BankListResp_Bank createEmptyInstance() => create();
  static $pb.PbList<BankListResp_Bank> createRepeated() => $pb.PbList<BankListResp_Bank>();
  @$core.pragma('dart2js:noInline')
  static BankListResp_Bank getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankListResp_Bank>(create);
  static BankListResp_Bank _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bankId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bankId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBankId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bankName => $_getSZ(1);
  @$pb.TagNumber(2)
  set bankName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBankName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBankName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get withdrawFee => $_getIZ(2);
  @$pb.TagNumber(3)
  set withdrawFee($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWithdrawFee() => $_has(2);
  @$pb.TagNumber(3)
  void clearWithdrawFee() => clearField(3);
}

class BankListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BankListResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<BankListResp_Bank>(1, 'banks', $pb.PbFieldType.PM, subBuilder: BankListResp_Bank.create)
    ..hasRequiredFields = false
  ;

  BankListResp._() : super();
  factory BankListResp() => create();
  factory BankListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BankListResp clone() => BankListResp()..mergeFromMessage(this);
  BankListResp copyWith(void Function(BankListResp) updates) => super.copyWith((message) => updates(message as BankListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankListResp create() => BankListResp._();
  BankListResp createEmptyInstance() => create();
  static $pb.PbList<BankListResp> createRepeated() => $pb.PbList<BankListResp>();
  @$core.pragma('dart2js:noInline')
  static BankListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankListResp>(create);
  static BankListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BankListResp_Bank> get banks => $_getList(0);
}

class AccountSettleReq_Settle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountSettleReq.Settle', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'bankId', $pb.PbFieldType.O3)
    ..aOS(2, 'accountId')
    ..aOS(3, 'accountName')
    ..aOS(4, 'phone')
    ..hasRequiredFields = false
  ;

  AccountSettleReq_Settle._() : super();
  factory AccountSettleReq_Settle() => create();
  factory AccountSettleReq_Settle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSettleReq_Settle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountSettleReq_Settle clone() => AccountSettleReq_Settle()..mergeFromMessage(this);
  AccountSettleReq_Settle copyWith(void Function(AccountSettleReq_Settle) updates) => super.copyWith((message) => updates(message as AccountSettleReq_Settle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSettleReq_Settle create() => AccountSettleReq_Settle._();
  AccountSettleReq_Settle createEmptyInstance() => create();
  static $pb.PbList<AccountSettleReq_Settle> createRepeated() => $pb.PbList<AccountSettleReq_Settle>();
  @$core.pragma('dart2js:noInline')
  static AccountSettleReq_Settle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSettleReq_Settle>(create);
  static AccountSettleReq_Settle _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bankId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bankId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBankId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);
}

class AccountSettleReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountSettleReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<AccountSettleReq_Cmd>(3, 'cmd', $pb.PbFieldType.OE, defaultOrMaker: AccountSettleReq_Cmd.QUERY, valueOf: AccountSettleReq_Cmd.valueOf, enumValues: AccountSettleReq_Cmd.values)
    ..aOM<AccountSettleReq_Settle>(4, 'settle', subBuilder: AccountSettleReq_Settle.create)
    ..hasRequiredFields = false
  ;

  AccountSettleReq._() : super();
  factory AccountSettleReq() => create();
  factory AccountSettleReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSettleReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountSettleReq clone() => AccountSettleReq()..mergeFromMessage(this);
  AccountSettleReq copyWith(void Function(AccountSettleReq) updates) => super.copyWith((message) => updates(message as AccountSettleReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSettleReq create() => AccountSettleReq._();
  AccountSettleReq createEmptyInstance() => create();
  static $pb.PbList<AccountSettleReq> createRepeated() => $pb.PbList<AccountSettleReq>();
  @$core.pragma('dart2js:noInline')
  static AccountSettleReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSettleReq>(create);
  static AccountSettleReq _defaultInstance;

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
  AccountSettleReq_Cmd get cmd => $_getN(2);
  @$pb.TagNumber(3)
  set cmd(AccountSettleReq_Cmd v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCmd() => $_has(2);
  @$pb.TagNumber(3)
  void clearCmd() => clearField(3);

  @$pb.TagNumber(4)
  AccountSettleReq_Settle get settle => $_getN(3);
  @$pb.TagNumber(4)
  set settle(AccountSettleReq_Settle v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSettle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSettle() => clearField(4);
  @$pb.TagNumber(4)
  AccountSettleReq_Settle ensureSettle() => $_ensure(3);
}

class AccountSettleResp_Settle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountSettleResp.Settle', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'bankName')
    ..aOS(2, 'accountId')
    ..aOS(3, 'accountName')
    ..aOS(4, 'phone')
    ..aOB(5, 'valid')
    ..hasRequiredFields = false
  ;

  AccountSettleResp_Settle._() : super();
  factory AccountSettleResp_Settle() => create();
  factory AccountSettleResp_Settle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSettleResp_Settle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountSettleResp_Settle clone() => AccountSettleResp_Settle()..mergeFromMessage(this);
  AccountSettleResp_Settle copyWith(void Function(AccountSettleResp_Settle) updates) => super.copyWith((message) => updates(message as AccountSettleResp_Settle));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSettleResp_Settle create() => AccountSettleResp_Settle._();
  AccountSettleResp_Settle createEmptyInstance() => create();
  static $pb.PbList<AccountSettleResp_Settle> createRepeated() => $pb.PbList<AccountSettleResp_Settle>();
  @$core.pragma('dart2js:noInline')
  static AccountSettleResp_Settle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSettleResp_Settle>(create);
  static AccountSettleResp_Settle _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bankName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bankName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBankName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get valid => $_getBF(4);
  @$pb.TagNumber(5)
  set valid($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValid() => $_has(4);
  @$pb.TagNumber(5)
  void clearValid() => clearField(5);
}

class AccountSettleResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountSettleResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<AccountSettleResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: AccountSettleResp_Status.OK, valueOf: AccountSettleResp_Status.valueOf, enumValues: AccountSettleResp_Status.values)
    ..aOM<AccountSettleResp_Settle>(2, 'settle', subBuilder: AccountSettleResp_Settle.create)
    ..hasRequiredFields = false
  ;

  AccountSettleResp._() : super();
  factory AccountSettleResp() => create();
  factory AccountSettleResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSettleResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountSettleResp clone() => AccountSettleResp()..mergeFromMessage(this);
  AccountSettleResp copyWith(void Function(AccountSettleResp) updates) => super.copyWith((message) => updates(message as AccountSettleResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSettleResp create() => AccountSettleResp._();
  AccountSettleResp createEmptyInstance() => create();
  static $pb.PbList<AccountSettleResp> createRepeated() => $pb.PbList<AccountSettleResp>();
  @$core.pragma('dart2js:noInline')
  static AccountSettleResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSettleResp>(create);
  static AccountSettleResp _defaultInstance;

  @$pb.TagNumber(1)
  AccountSettleResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(AccountSettleResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  AccountSettleResp_Settle get settle => $_getN(1);
  @$pb.TagNumber(2)
  set settle(AccountSettleResp_Settle v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSettle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSettle() => clearField(2);
  @$pb.TagNumber(2)
  AccountSettleResp_Settle ensureSettle() => $_ensure(1);
}

class OrderChargeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderChargeReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..a<$core.int>(3, 'productId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'couponId', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'count', $pb.PbFieldType.O3)
    ..e<OS>(6, 'os', $pb.PbFieldType.OE, defaultOrMaker: OS.OS_UNK, valueOf: OS.valueOf, enumValues: OS.values)
    ..e<PayChannel>(7, 'channel', $pb.PbFieldType.OE, defaultOrMaker: PayChannel.BALANCE, valueOf: PayChannel.valueOf, enumValues: PayChannel.values)
    ..hasRequiredFields = false
  ;

  OrderChargeReq._() : super();
  factory OrderChargeReq() => create();
  factory OrderChargeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderChargeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderChargeReq clone() => OrderChargeReq()..mergeFromMessage(this);
  OrderChargeReq copyWith(void Function(OrderChargeReq) updates) => super.copyWith((message) => updates(message as OrderChargeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderChargeReq create() => OrderChargeReq._();
  OrderChargeReq createEmptyInstance() => create();
  static $pb.PbList<OrderChargeReq> createRepeated() => $pb.PbList<OrderChargeReq>();
  @$core.pragma('dart2js:noInline')
  static OrderChargeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderChargeReq>(create);
  static OrderChargeReq _defaultInstance;

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
  $core.int get productId => $_getIZ(2);
  @$pb.TagNumber(3)
  set productId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProductId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProductId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get couponId => $_getIZ(3);
  @$pb.TagNumber(4)
  set couponId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCouponId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCouponId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get count => $_getIZ(4);
  @$pb.TagNumber(5)
  set count($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearCount() => clearField(5);

  @$pb.TagNumber(6)
  OS get os => $_getN(5);
  @$pb.TagNumber(6)
  set os(OS v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasOs() => $_has(5);
  @$pb.TagNumber(6)
  void clearOs() => clearField(6);

  @$pb.TagNumber(7)
  PayChannel get channel => $_getN(6);
  @$pb.TagNumber(7)
  set channel(PayChannel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasChannel() => $_has(6);
  @$pb.TagNumber(7)
  void clearChannel() => clearField(7);
}

class OrderChargeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderChargeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<OrderChargeResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: OrderChargeResp_Status.OK, valueOf: OrderChargeResp_Status.valueOf, enumValues: OrderChargeResp_Status.values)
    ..aOS(2, 'jsonStr')
    ..aOS(3, 'orderNo')
    ..hasRequiredFields = false
  ;

  OrderChargeResp._() : super();
  factory OrderChargeResp() => create();
  factory OrderChargeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderChargeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderChargeResp clone() => OrderChargeResp()..mergeFromMessage(this);
  OrderChargeResp copyWith(void Function(OrderChargeResp) updates) => super.copyWith((message) => updates(message as OrderChargeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderChargeResp create() => OrderChargeResp._();
  OrderChargeResp createEmptyInstance() => create();
  static $pb.PbList<OrderChargeResp> createRepeated() => $pb.PbList<OrderChargeResp>();
  @$core.pragma('dart2js:noInline')
  static OrderChargeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderChargeResp>(create);
  static OrderChargeResp _defaultInstance;

  @$pb.TagNumber(1)
  OrderChargeResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(OrderChargeResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jsonStr => $_getSZ(1);
  @$pb.TagNumber(2)
  set jsonStr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJsonStr() => $_has(1);
  @$pb.TagNumber(2)
  void clearJsonStr() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orderNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderNo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderNo() => clearField(3);
}

class OrderStateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderStateReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'orderNo')
    ..e<OrderStateReq_Category>(2, 'category', $pb.PbFieldType.OE, defaultOrMaker: OrderStateReq_Category.UNK, valueOf: OrderStateReq_Category.valueOf, enumValues: OrderStateReq_Category.values)
    ..e<OS>(3, 'os', $pb.PbFieldType.OE, defaultOrMaker: OS.OS_UNK, valueOf: OS.valueOf, enumValues: OS.values)
    ..aOS(4, 'uid')
    ..aOS(5, 'token')
    ..hasRequiredFields = false
  ;

  OrderStateReq._() : super();
  factory OrderStateReq() => create();
  factory OrderStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderStateReq clone() => OrderStateReq()..mergeFromMessage(this);
  OrderStateReq copyWith(void Function(OrderStateReq) updates) => super.copyWith((message) => updates(message as OrderStateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderStateReq create() => OrderStateReq._();
  OrderStateReq createEmptyInstance() => create();
  static $pb.PbList<OrderStateReq> createRepeated() => $pb.PbList<OrderStateReq>();
  @$core.pragma('dart2js:noInline')
  static OrderStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderStateReq>(create);
  static OrderStateReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderNo() => clearField(1);

  @$pb.TagNumber(2)
  OrderStateReq_Category get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(OrderStateReq_Category v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  OS get os => $_getN(2);
  @$pb.TagNumber(3)
  set os(OS v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOs() => $_has(2);
  @$pb.TagNumber(3)
  void clearOs() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uid => $_getSZ(3);
  @$pb.TagNumber(4)
  set uid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get token => $_getSZ(4);
  @$pb.TagNumber(5)
  set token($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearToken() => clearField(5);
}

class OrderStateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderStateResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<OrderStateResp_State>(1, 'state', $pb.PbFieldType.OE, defaultOrMaker: OrderStateResp_State.PENDING, valueOf: OrderStateResp_State.valueOf, enumValues: OrderStateResp_State.values)
    ..hasRequiredFields = false
  ;

  OrderStateResp._() : super();
  factory OrderStateResp() => create();
  factory OrderStateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderStateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderStateResp clone() => OrderStateResp()..mergeFromMessage(this);
  OrderStateResp copyWith(void Function(OrderStateResp) updates) => super.copyWith((message) => updates(message as OrderStateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderStateResp create() => OrderStateResp._();
  OrderStateResp createEmptyInstance() => create();
  static $pb.PbList<OrderStateResp> createRepeated() => $pb.PbList<OrderStateResp>();
  @$core.pragma('dart2js:noInline')
  static OrderStateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderStateResp>(create);
  static OrderStateResp _defaultInstance;

  @$pb.TagNumber(1)
  OrderStateResp_State get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(OrderStateResp_State v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

class AccountDetailReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountDetailReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..e<AccountDetailReq_Category>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: AccountDetailReq_Category.CATEGORY_UNK, valueOf: AccountDetailReq_Category.valueOf, enumValues: AccountDetailReq_Category.values)
    ..a<$core.int>(4, 'pageNum', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AccountDetailReq._() : super();
  factory AccountDetailReq() => create();
  factory AccountDetailReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountDetailReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountDetailReq clone() => AccountDetailReq()..mergeFromMessage(this);
  AccountDetailReq copyWith(void Function(AccountDetailReq) updates) => super.copyWith((message) => updates(message as AccountDetailReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountDetailReq create() => AccountDetailReq._();
  AccountDetailReq createEmptyInstance() => create();
  static $pb.PbList<AccountDetailReq> createRepeated() => $pb.PbList<AccountDetailReq>();
  @$core.pragma('dart2js:noInline')
  static AccountDetailReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountDetailReq>(create);
  static AccountDetailReq _defaultInstance;

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
  AccountDetailReq_Category get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(AccountDetailReq_Category v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageNum($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPageNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageNum() => clearField(4);
}

class AccountDetailResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountDetailResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'cost', $pb.PbFieldType.O3)
    ..aOS(2, 'content')
    ..aOS(3, 'time')
    ..aOS(4, 'direction')
    ..hasRequiredFields = false
  ;

  AccountDetailResp_Item._() : super();
  factory AccountDetailResp_Item() => create();
  factory AccountDetailResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountDetailResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountDetailResp_Item clone() => AccountDetailResp_Item()..mergeFromMessage(this);
  AccountDetailResp_Item copyWith(void Function(AccountDetailResp_Item) updates) => super.copyWith((message) => updates(message as AccountDetailResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountDetailResp_Item create() => AccountDetailResp_Item._();
  AccountDetailResp_Item createEmptyInstance() => create();
  static $pb.PbList<AccountDetailResp_Item> createRepeated() => $pb.PbList<AccountDetailResp_Item>();
  @$core.pragma('dart2js:noInline')
  static AccountDetailResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountDetailResp_Item>(create);
  static AccountDetailResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cost => $_getIZ(0);
  @$pb.TagNumber(1)
  set cost($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCost() => $_has(0);
  @$pb.TagNumber(1)
  void clearCost() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get time => $_getSZ(2);
  @$pb.TagNumber(3)
  set time($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get direction => $_getSZ(3);
  @$pb.TagNumber(4)
  set direction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDirection() => $_has(3);
  @$pb.TagNumber(4)
  void clearDirection() => clearField(4);
}

class AccountDetailResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountDetailResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..pc<AccountDetailResp_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: AccountDetailResp_Item.create)
    ..e<AccountDetailResp_STATUS>(2, 'status', $pb.PbFieldType.OE, defaultOrMaker: AccountDetailResp_STATUS.OK, valueOf: AccountDetailResp_STATUS.valueOf, enumValues: AccountDetailResp_STATUS.values)
    ..hasRequiredFields = false
  ;

  AccountDetailResp._() : super();
  factory AccountDetailResp() => create();
  factory AccountDetailResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountDetailResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountDetailResp clone() => AccountDetailResp()..mergeFromMessage(this);
  AccountDetailResp copyWith(void Function(AccountDetailResp) updates) => super.copyWith((message) => updates(message as AccountDetailResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountDetailResp create() => AccountDetailResp._();
  AccountDetailResp createEmptyInstance() => create();
  static $pb.PbList<AccountDetailResp> createRepeated() => $pb.PbList<AccountDetailResp>();
  @$core.pragma('dart2js:noInline')
  static AccountDetailResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountDetailResp>(create);
  static AccountDetailResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AccountDetailResp_Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  AccountDetailResp_STATUS get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(AccountDetailResp_STATUS v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class ShopRankReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopRankReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ShopRankReq_Category>(1, 'category', $pb.PbFieldType.OE, defaultOrMaker: ShopRankReq_Category.TRUE_LOVE, valueOf: ShopRankReq_Category.valueOf, enumValues: ShopRankReq_Category.values)
    ..aOS(2, 'roomId')
    ..e<ShopRankReq_Period>(3, 'period', $pb.PbFieldType.OE, defaultOrMaker: ShopRankReq_Period.WEEK, valueOf: ShopRankReq_Period.valueOf, enumValues: ShopRankReq_Period.values)
    ..hasRequiredFields = false
  ;

  ShopRankReq._() : super();
  factory ShopRankReq() => create();
  factory ShopRankReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopRankReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopRankReq clone() => ShopRankReq()..mergeFromMessage(this);
  ShopRankReq copyWith(void Function(ShopRankReq) updates) => super.copyWith((message) => updates(message as ShopRankReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopRankReq create() => ShopRankReq._();
  ShopRankReq createEmptyInstance() => create();
  static $pb.PbList<ShopRankReq> createRepeated() => $pb.PbList<ShopRankReq>();
  @$core.pragma('dart2js:noInline')
  static ShopRankReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopRankReq>(create);
  static ShopRankReq _defaultInstance;

  @$pb.TagNumber(1)
  ShopRankReq_Category get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(ShopRankReq_Category v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  @$pb.TagNumber(3)
  ShopRankReq_Period get period => $_getN(2);
  @$pb.TagNumber(3)
  set period(ShopRankReq_Period v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPeriod() => $_has(2);
  @$pb.TagNumber(3)
  void clearPeriod() => clearField(3);
}

class ShopRankResp_User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopRankResp.User', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'name')
    ..aOS(3, 'avatar')
    ..aOS(4, 'gender')
    ..a<$core.int>(5, 'age', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'noble', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'vip', $pb.PbFieldType.O3)
    ..aOS(8, 'greatNum')
    ..a<$core.int>(9, 'avatarBox', $pb.PbFieldType.O3)
    ..a<$core.int>(10, 'fans', $pb.PbFieldType.O3)
    ..aOS(11, 'declaration')
    ..hasRequiredFields = false
  ;

  ShopRankResp_User._() : super();
  factory ShopRankResp_User() => create();
  factory ShopRankResp_User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopRankResp_User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopRankResp_User clone() => ShopRankResp_User()..mergeFromMessage(this);
  ShopRankResp_User copyWith(void Function(ShopRankResp_User) updates) => super.copyWith((message) => updates(message as ShopRankResp_User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopRankResp_User create() => ShopRankResp_User._();
  ShopRankResp_User createEmptyInstance() => create();
  static $pb.PbList<ShopRankResp_User> createRepeated() => $pb.PbList<ShopRankResp_User>();
  @$core.pragma('dart2js:noInline')
  static ShopRankResp_User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopRankResp_User>(create);
  static ShopRankResp_User _defaultInstance;

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
  $core.String get gender => $_getSZ(3);
  @$pb.TagNumber(4)
  set gender($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGender() => $_has(3);
  @$pb.TagNumber(4)
  void clearGender() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get age => $_getIZ(4);
  @$pb.TagNumber(5)
  set age($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAge() => $_has(4);
  @$pb.TagNumber(5)
  void clearAge() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get noble => $_getIZ(5);
  @$pb.TagNumber(6)
  set noble($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNoble() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoble() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get vip => $_getIZ(6);
  @$pb.TagNumber(7)
  set vip($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVip() => $_has(6);
  @$pb.TagNumber(7)
  void clearVip() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get greatNum => $_getSZ(7);
  @$pb.TagNumber(8)
  set greatNum($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGreatNum() => $_has(7);
  @$pb.TagNumber(8)
  void clearGreatNum() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get avatarBox => $_getIZ(8);
  @$pb.TagNumber(9)
  set avatarBox($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAvatarBox() => $_has(8);
  @$pb.TagNumber(9)
  void clearAvatarBox() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get fans => $_getIZ(9);
  @$pb.TagNumber(10)
  set fans($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFans() => $_has(9);
  @$pb.TagNumber(10)
  void clearFans() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get declaration => $_getSZ(10);
  @$pb.TagNumber(11)
  set declaration($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeclaration() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeclaration() => clearField(11);
}

class ShopRankResp_Extension extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopRankResp.Extension', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'gift', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'giftCount', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'value', $pb.PbFieldType.O3)
    ..aOS(4, 'time')
    ..e<PRODUCT_GRADE>(5, 'box', $pb.PbFieldType.OE, defaultOrMaker: PRODUCT_GRADE.NONE, valueOf: PRODUCT_GRADE.valueOf, enumValues: PRODUCT_GRADE.values)
    ..a<$core.int>(6, 'boxCount', $pb.PbFieldType.O3)
    ..e<PRODUCT_GRADE>(7, 'relation', $pb.PbFieldType.OE, defaultOrMaker: PRODUCT_GRADE.NONE, valueOf: PRODUCT_GRADE.valueOf, enumValues: PRODUCT_GRADE.values)
    ..aOS(8, 'celebrity')
    ..hasRequiredFields = false
  ;

  ShopRankResp_Extension._() : super();
  factory ShopRankResp_Extension() => create();
  factory ShopRankResp_Extension.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopRankResp_Extension.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopRankResp_Extension clone() => ShopRankResp_Extension()..mergeFromMessage(this);
  ShopRankResp_Extension copyWith(void Function(ShopRankResp_Extension) updates) => super.copyWith((message) => updates(message as ShopRankResp_Extension));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopRankResp_Extension create() => ShopRankResp_Extension._();
  ShopRankResp_Extension createEmptyInstance() => create();
  static $pb.PbList<ShopRankResp_Extension> createRepeated() => $pb.PbList<ShopRankResp_Extension>();
  @$core.pragma('dart2js:noInline')
  static ShopRankResp_Extension getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopRankResp_Extension>(create);
  static ShopRankResp_Extension _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gift => $_getIZ(0);
  @$pb.TagNumber(1)
  set gift($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGift() => $_has(0);
  @$pb.TagNumber(1)
  void clearGift() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get giftCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set giftCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGiftCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearGiftCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get value => $_getIZ(2);
  @$pb.TagNumber(3)
  set value($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get time => $_getSZ(3);
  @$pb.TagNumber(4)
  set time($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);

  @$pb.TagNumber(5)
  PRODUCT_GRADE get box => $_getN(4);
  @$pb.TagNumber(5)
  set box(PRODUCT_GRADE v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBox() => $_has(4);
  @$pb.TagNumber(5)
  void clearBox() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get boxCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set boxCount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBoxCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearBoxCount() => clearField(6);

  @$pb.TagNumber(7)
  PRODUCT_GRADE get relation => $_getN(6);
  @$pb.TagNumber(7)
  set relation(PRODUCT_GRADE v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRelation() => $_has(6);
  @$pb.TagNumber(7)
  void clearRelation() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get celebrity => $_getSZ(7);
  @$pb.TagNumber(8)
  set celebrity($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCelebrity() => $_has(7);
  @$pb.TagNumber(8)
  void clearCelebrity() => clearField(8);
}

class ShopRankResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopRankResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOM<ShopRankResp_User>(1, 'user', subBuilder: ShopRankResp_User.create)
    ..aOM<ShopRankResp_User>(2, 'toUser', subBuilder: ShopRankResp_User.create)
    ..aOM<ShopRankResp_Extension>(3, 'ext', subBuilder: ShopRankResp_Extension.create)
    ..hasRequiredFields = false
  ;

  ShopRankResp_Item._() : super();
  factory ShopRankResp_Item() => create();
  factory ShopRankResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopRankResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopRankResp_Item clone() => ShopRankResp_Item()..mergeFromMessage(this);
  ShopRankResp_Item copyWith(void Function(ShopRankResp_Item) updates) => super.copyWith((message) => updates(message as ShopRankResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopRankResp_Item create() => ShopRankResp_Item._();
  ShopRankResp_Item createEmptyInstance() => create();
  static $pb.PbList<ShopRankResp_Item> createRepeated() => $pb.PbList<ShopRankResp_Item>();
  @$core.pragma('dart2js:noInline')
  static ShopRankResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopRankResp_Item>(create);
  static ShopRankResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  ShopRankResp_User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(ShopRankResp_User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  ShopRankResp_User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  ShopRankResp_User get toUser => $_getN(1);
  @$pb.TagNumber(2)
  set toUser(ShopRankResp_User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasToUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearToUser() => clearField(2);
  @$pb.TagNumber(2)
  ShopRankResp_User ensureToUser() => $_ensure(1);

  @$pb.TagNumber(3)
  ShopRankResp_Extension get ext => $_getN(2);
  @$pb.TagNumber(3)
  set ext(ShopRankResp_Extension v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExt() => $_has(2);
  @$pb.TagNumber(3)
  void clearExt() => clearField(3);
  @$pb.TagNumber(3)
  ShopRankResp_Extension ensureExt() => $_ensure(2);
}

class ShopRankResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopRankResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ShopRankResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: ShopRankResp_Status.OK, valueOf: ShopRankResp_Status.valueOf, enumValues: ShopRankResp_Status.values)
    ..pc<ShopRankResp_Item>(2, 'items', $pb.PbFieldType.PM, subBuilder: ShopRankResp_Item.create)
    ..hasRequiredFields = false
  ;

  ShopRankResp._() : super();
  factory ShopRankResp() => create();
  factory ShopRankResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopRankResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopRankResp clone() => ShopRankResp()..mergeFromMessage(this);
  ShopRankResp copyWith(void Function(ShopRankResp) updates) => super.copyWith((message) => updates(message as ShopRankResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopRankResp create() => ShopRankResp._();
  ShopRankResp createEmptyInstance() => create();
  static $pb.PbList<ShopRankResp> createRepeated() => $pb.PbList<ShopRankResp>();
  @$core.pragma('dart2js:noInline')
  static ShopRankResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopRankResp>(create);
  static ShopRankResp _defaultInstance;

  @$pb.TagNumber(1)
  ShopRankResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ShopRankResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ShopRankResp_Item> get items => $_getList(1);
}

class ShopMiniRankResp_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopMiniRankResp.Item', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ShopRankReq_Category>(1, 'category', $pb.PbFieldType.OE, defaultOrMaker: ShopRankReq_Category.TRUE_LOVE, valueOf: ShopRankReq_Category.valueOf, enumValues: ShopRankReq_Category.values)
    ..aOM<ShopRankResp_User>(2, 'first', subBuilder: ShopRankResp_User.create)
    ..aOM<ShopRankResp_User>(3, 'second', subBuilder: ShopRankResp_User.create)
    ..a<$core.int>(4, 'gift', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ShopMiniRankResp_Item._() : super();
  factory ShopMiniRankResp_Item() => create();
  factory ShopMiniRankResp_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopMiniRankResp_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopMiniRankResp_Item clone() => ShopMiniRankResp_Item()..mergeFromMessage(this);
  ShopMiniRankResp_Item copyWith(void Function(ShopMiniRankResp_Item) updates) => super.copyWith((message) => updates(message as ShopMiniRankResp_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopMiniRankResp_Item create() => ShopMiniRankResp_Item._();
  ShopMiniRankResp_Item createEmptyInstance() => create();
  static $pb.PbList<ShopMiniRankResp_Item> createRepeated() => $pb.PbList<ShopMiniRankResp_Item>();
  @$core.pragma('dart2js:noInline')
  static ShopMiniRankResp_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopMiniRankResp_Item>(create);
  static ShopMiniRankResp_Item _defaultInstance;

  @$pb.TagNumber(1)
  ShopRankReq_Category get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(ShopRankReq_Category v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  ShopRankResp_User get first => $_getN(1);
  @$pb.TagNumber(2)
  set first(ShopRankResp_User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirst() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirst() => clearField(2);
  @$pb.TagNumber(2)
  ShopRankResp_User ensureFirst() => $_ensure(1);

  @$pb.TagNumber(3)
  ShopRankResp_User get second => $_getN(2);
  @$pb.TagNumber(3)
  set second(ShopRankResp_User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecond() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecond() => clearField(3);
  @$pb.TagNumber(3)
  ShopRankResp_User ensureSecond() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get gift => $_getIZ(3);
  @$pb.TagNumber(4)
  set gift($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGift() => $_has(3);
  @$pb.TagNumber(4)
  void clearGift() => clearField(4);
}

class ShopMiniRankResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShopMiniRankResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ShopMiniRankResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: ShopMiniRankResp_Status.OK, valueOf: ShopMiniRankResp_Status.valueOf, enumValues: ShopMiniRankResp_Status.values)
    ..pc<ShopMiniRankResp_Item>(2, 'items', $pb.PbFieldType.PM, subBuilder: ShopMiniRankResp_Item.create)
    ..hasRequiredFields = false
  ;

  ShopMiniRankResp._() : super();
  factory ShopMiniRankResp() => create();
  factory ShopMiniRankResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShopMiniRankResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShopMiniRankResp clone() => ShopMiniRankResp()..mergeFromMessage(this);
  ShopMiniRankResp copyWith(void Function(ShopMiniRankResp) updates) => super.copyWith((message) => updates(message as ShopMiniRankResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShopMiniRankResp create() => ShopMiniRankResp._();
  ShopMiniRankResp createEmptyInstance() => create();
  static $pb.PbList<ShopMiniRankResp> createRepeated() => $pb.PbList<ShopMiniRankResp>();
  @$core.pragma('dart2js:noInline')
  static ShopMiniRankResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShopMiniRankResp>(create);
  static ShopMiniRankResp _defaultInstance;

  @$pb.TagNumber(1)
  ShopMiniRankResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ShopMiniRankResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ShopMiniRankResp_Item> get items => $_getList(1);
}

class BoxTopRewardReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BoxTopRewardReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<PRODUCT_GRADE>(1, 'grade', $pb.PbFieldType.OE, defaultOrMaker: PRODUCT_GRADE.NONE, valueOf: PRODUCT_GRADE.valueOf, enumValues: PRODUCT_GRADE.values)
    ..hasRequiredFields = false
  ;

  BoxTopRewardReq._() : super();
  factory BoxTopRewardReq() => create();
  factory BoxTopRewardReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoxTopRewardReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BoxTopRewardReq clone() => BoxTopRewardReq()..mergeFromMessage(this);
  BoxTopRewardReq copyWith(void Function(BoxTopRewardReq) updates) => super.copyWith((message) => updates(message as BoxTopRewardReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoxTopRewardReq create() => BoxTopRewardReq._();
  BoxTopRewardReq createEmptyInstance() => create();
  static $pb.PbList<BoxTopRewardReq> createRepeated() => $pb.PbList<BoxTopRewardReq>();
  @$core.pragma('dart2js:noInline')
  static BoxTopRewardReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoxTopRewardReq>(create);
  static BoxTopRewardReq _defaultInstance;

  @$pb.TagNumber(1)
  PRODUCT_GRADE get grade => $_getN(0);
  @$pb.TagNumber(1)
  set grade(PRODUCT_GRADE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGrade() => $_has(0);
  @$pb.TagNumber(1)
  void clearGrade() => clearField(1);
}

class BoxTopRewardResp_Round extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BoxTopRewardResp.Round', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..a<$core.int>(1, 'hour', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'pid', $pb.PbFieldType.O3)
    ..aOS(3, 'title')
    ..aOS(4, 'icon')
    ..a<$core.int>(5, 'price', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BoxTopRewardResp_Round._() : super();
  factory BoxTopRewardResp_Round() => create();
  factory BoxTopRewardResp_Round.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoxTopRewardResp_Round.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BoxTopRewardResp_Round clone() => BoxTopRewardResp_Round()..mergeFromMessage(this);
  BoxTopRewardResp_Round copyWith(void Function(BoxTopRewardResp_Round) updates) => super.copyWith((message) => updates(message as BoxTopRewardResp_Round));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoxTopRewardResp_Round create() => BoxTopRewardResp_Round._();
  BoxTopRewardResp_Round createEmptyInstance() => create();
  static $pb.PbList<BoxTopRewardResp_Round> createRepeated() => $pb.PbList<BoxTopRewardResp_Round>();
  @$core.pragma('dart2js:noInline')
  static BoxTopRewardResp_Round getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoxTopRewardResp_Round>(create);
  static BoxTopRewardResp_Round _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hour => $_getIZ(0);
  @$pb.TagNumber(1)
  set hour($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHour() => $_has(0);
  @$pb.TagNumber(1)
  void clearHour() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pid => $_getIZ(1);
  @$pb.TagNumber(2)
  set pid($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPid() => $_has(1);
  @$pb.TagNumber(2)
  void clearPid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get price => $_getIZ(4);
  @$pb.TagNumber(5)
  set price($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);
}

class BoxTopRewardResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BoxTopRewardResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<PRODUCT_GRADE>(1, 'grade', $pb.PbFieldType.OE, defaultOrMaker: PRODUCT_GRADE.NONE, valueOf: PRODUCT_GRADE.valueOf, enumValues: PRODUCT_GRADE.values)
    ..pc<BoxTopRewardResp_Round>(2, 'rounds', $pb.PbFieldType.PM, subBuilder: BoxTopRewardResp_Round.create)
    ..hasRequiredFields = false
  ;

  BoxTopRewardResp._() : super();
  factory BoxTopRewardResp() => create();
  factory BoxTopRewardResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoxTopRewardResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BoxTopRewardResp clone() => BoxTopRewardResp()..mergeFromMessage(this);
  BoxTopRewardResp copyWith(void Function(BoxTopRewardResp) updates) => super.copyWith((message) => updates(message as BoxTopRewardResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoxTopRewardResp create() => BoxTopRewardResp._();
  BoxTopRewardResp createEmptyInstance() => create();
  static $pb.PbList<BoxTopRewardResp> createRepeated() => $pb.PbList<BoxTopRewardResp>();
  @$core.pragma('dart2js:noInline')
  static BoxTopRewardResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoxTopRewardResp>(create);
  static BoxTopRewardResp _defaultInstance;

  @$pb.TagNumber(1)
  PRODUCT_GRADE get grade => $_getN(0);
  @$pb.TagNumber(1)
  set grade(PRODUCT_GRADE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGrade() => $_has(0);
  @$pb.TagNumber(1)
  void clearGrade() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<BoxTopRewardResp_Round> get rounds => $_getList(1);
}

class ExchangeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExchangeReq', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'token')
    ..a<$core.int>(3, 'attraction', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ExchangeReq._() : super();
  factory ExchangeReq() => create();
  factory ExchangeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExchangeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ExchangeReq clone() => ExchangeReq()..mergeFromMessage(this);
  ExchangeReq copyWith(void Function(ExchangeReq) updates) => super.copyWith((message) => updates(message as ExchangeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExchangeReq create() => ExchangeReq._();
  ExchangeReq createEmptyInstance() => create();
  static $pb.PbList<ExchangeReq> createRepeated() => $pb.PbList<ExchangeReq>();
  @$core.pragma('dart2js:noInline')
  static ExchangeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExchangeReq>(create);
  static ExchangeReq _defaultInstance;

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
  $core.int get attraction => $_getIZ(2);
  @$pb.TagNumber(3)
  set attraction($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAttraction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAttraction() => clearField(3);
}

class ExchangeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExchangeResp', package: const $pb.PackageName('proto_def'), createEmptyInstance: create)
    ..e<ExchangeResp_Status>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: ExchangeResp_Status.OK, valueOf: ExchangeResp_Status.valueOf, enumValues: ExchangeResp_Status.values)
    ..hasRequiredFields = false
  ;

  ExchangeResp._() : super();
  factory ExchangeResp() => create();
  factory ExchangeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExchangeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ExchangeResp clone() => ExchangeResp()..mergeFromMessage(this);
  ExchangeResp copyWith(void Function(ExchangeResp) updates) => super.copyWith((message) => updates(message as ExchangeResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExchangeResp create() => ExchangeResp._();
  ExchangeResp createEmptyInstance() => create();
  static $pb.PbList<ExchangeResp> createRepeated() => $pb.PbList<ExchangeResp>();
  @$core.pragma('dart2js:noInline')
  static ExchangeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExchangeResp>(create);
  static ExchangeResp _defaultInstance;

  @$pb.TagNumber(1)
  ExchangeResp_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ExchangeResp_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

