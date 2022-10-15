import 'package:flutter/material.dart';
class ColorApp{

static Color primaryColor  =  HexColor("#EFB773");
static Color BorderColore  =  Colors.black12;
static Color FontColorBlack  =  HexColor("#474749");
static Color contColor  =  HexColor("#fec8bd");
static Color redColor  =  Colors.red;






}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}