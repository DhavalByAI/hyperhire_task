import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyperhire_task/core/theme/font_manager.dart';

Widget cText(
  String text, {
  Color? color,
  double? fontSize,
  FontWeight? fontWeight = FontWeightManager.medium,
  TextAlign? textAlign,
  double minFontSize = 8,
  int? maxLines,
  double maxFontSize = double.infinity,
  TextOverflow? overflow,
  double? latterSpacing,
  double? wordSpacing,
  Color? decorationColor,
  TextDecoration? decoration,
}) {
  return AutoSizeText(
    text,
    maxFontSize: maxFontSize,
    minFontSize: minFontSize,
    maxLines: maxLines,
    overflow: overflow,
    textAlign: textAlign,
    style: GoogleFonts.poppins(
        decoration: decoration,
        decorationColor: decorationColor,
        fontSize: fontSize ?? MyFonts.size14,
        letterSpacing: latterSpacing ?? 0.5,
        fontWeight: fontWeight ?? FontWeightManager.medium,
        color: color ?? Colors.white,
        wordSpacing: wordSpacing),
  );
}
