import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynewtask/utility/all_fontSize.dart';

import 'app_colors.dart';

TextStyle _style(
    {FontWeight? fontWeight,
    Color? color,
    double? fontSize,
    String? fontFamily,TextDecoration? textDecoration}) {
  return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
      fontFamily: fontFamily,decoration: textDecoration);
}

TextStyle infoTextStyle() {
  return _style(fontWeight: FontWeight.bold,
      color: ColorApp.FontColorBlack,
      fontSize: AllFontSize.f11);
}

TextStyle catTextStyle() {
  return _style(
      fontWeight: FontWeight.bold,
      color:ColorApp.FontColorBlack,
      fontSize: AllFontSize.f11);
}

TextStyle norTextStyle() {
  return _style(fontWeight: FontWeight.bold,
      color:ColorApp.FontColorBlack,
      fontSize: AllFontSize.f9);
}
TextStyle mediumTextStyle() {
  return GoogleFonts.poppins(fontWeight: FontWeight.bold,
      color: ColorApp.FontColorBlack,
      fontSize: AllFontSize.f10);
}
TextStyle lineThroughTextStyle() {
  return _style(fontWeight: FontWeight.bold,
      color:ColorApp.FontColorBlack, textDecoration:  TextDecoration.lineThrough,
      fontSize: AllFontSize.f9);
}


TextStyle priceTextStyle() {
  return _style(fontWeight: FontWeight.bold,
      color:ColorApp.redColor,
      fontSize: AllFontSize.f9);
}

TextStyle priceBigTextTextStyle() {
  return _style(fontWeight: FontWeight.bold,
      color:ColorApp.redColor,
      fontSize: AllFontSize.f14);
}