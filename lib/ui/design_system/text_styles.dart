import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rti_assignment/ui/design_system/rti_colors.dart';

class RTITextStyles {
  static TextStyle headerTextStyle = GoogleFonts.roboto(
      textStyle: TextStyle(
          color: RTIColors.liteBlack,
          fontSize: 18,
          fontWeight: FontWeight.w500));

  static TextStyle homeButtonTextStyle = GoogleFonts.roboto(
      textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ));
  static TextStyle dialogButtonTextStyle =
      GoogleFonts.roboto(textStyle: const TextStyle(color: Colors.white));
  static TextStyle dialogActionButtonTextStyle = GoogleFonts.roboto(
      textStyle: TextStyle(
    color: RTIColors.blue,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ));
  static TextStyle dialogWeekNameStyle = GoogleFonts.roboto(
      textStyle: TextStyle(
    color: RTIColors.liteBlack,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  ));
}
