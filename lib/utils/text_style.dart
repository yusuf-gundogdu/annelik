import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'color.dart';


AutoSizeText textBodyWhiteBold_22_24(String text) {
  return AutoSizeText(
    text,
    style: TextStyle(color: white, fontWeight: FontWeight.bold, fontFamily: 'Manrope'),
    minFontSize: 22,
    maxFontSize: 24,
    maxLines: 1,
  );
}

AutoSizeText textBodyWhiteNormal_14_16(String text) {
  return AutoSizeText(
    text,
    style: TextStyle(color: white, fontWeight: FontWeight.normal, fontFamily: 'Manrope'),
    minFontSize: 14,
    maxFontSize: 16,
    maxLines: 1,
  );
}

AutoSizeText textBodyBlackNormal_14_16(String text) {
  return AutoSizeText(
    text,
    style: TextStyle(color: black, fontWeight: FontWeight.normal, fontFamily: 'Manrope'),
    minFontSize: 14,
    maxFontSize: 16,
    maxLines: 1,
  );
}

AutoSizeText textBodyBlackBold_14_16(String text) {
  return AutoSizeText(
    text,
    style: TextStyle(color: black, fontWeight: FontWeight.bold, fontFamily: 'Manrope'),
    minFontSize: 14,
    maxFontSize: 16,
    maxLines: 1,
  );
}

AutoSizeText textBodyWhiteBold_18_20(String text) {
  return AutoSizeText(
    text,
    style: TextStyle(color: white, fontWeight: FontWeight.bold, fontFamily: 'Manrope'),
    minFontSize: 18,
    maxFontSize: 20,
    maxLines: 1,
  );
}

AutoSizeText textBodyPurpleBold_18_20(String text) {
  return AutoSizeText(
    text,
    style: TextStyle(color: purple, fontWeight: FontWeight.bold, fontFamily: 'Manrope'),
    minFontSize: 18,
    maxFontSize: 20,
    maxLines: 1,
  );
}

AutoSizeText textBodyPurpleBold_10_12(String text) {
  return AutoSizeText(
    text,
    style: TextStyle(color: purple, fontWeight: FontWeight.bold, fontFamily: 'Manrope'),
    minFontSize: 10,
    maxFontSize: 12,
    maxLines: 1,
  );
}