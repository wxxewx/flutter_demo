import 'package:baselib/domain/user/gender.dart';

class Avatar {
  final String url;
  final String asset;
  String decorate;

  Avatar(this.url, {decorate,Gender gender})
      : this.decorate = decorate,
        this.asset = gender.isMale
            ? "images/avatar_default_male.png"
            : "images/avatar_default_female.png";

  Avatar.Male(this.url, {decorate})
      : this.decorate = decorate,
        this.asset = "images/avatar_default_male.png";

  Avatar.Female(this.url, {decorate})
      : this.decorate = decorate,
        this.asset = "images/avatar_default_female.png";

  bool get hasDecorate {
    return decorate != null && decorate.isNotEmpty;
  }

  @override
  String toString() {
    return 'Avatar{url: $url, asset: $asset, decorate: $decorate}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Avatar &&
              runtimeType == other.runtimeType &&
              url == other.url &&
              asset == other.asset &&
              decorate == other.decorate;

  @override
  int get hashCode =>
      url.hashCode ^
      asset.hashCode ^
      decorate.hashCode;
  
  
  
}
