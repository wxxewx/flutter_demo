import 'dart:ui';

Color color(String hexColor) {
  // 如果传入的十六进制颜色值不符合要求，返回默认值
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return new Color(
      int.parse(hexColor, radix: 16) + 0xFF000000);
}
