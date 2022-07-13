import 'package:flutter/material.dart';

import 'color.dart';

ThemeData darkTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      accentColor: black12,
    ),
    primaryColor: purple,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: purple.withOpacity(.5),
      cursorColor: purple.withOpacity(.6),
      selectionHandleColor: purple.withOpacity(1),
    ),
    platform: TargetPlatform.android,
    scaffoldBackgroundColor: white,
    fontFamily: 'Manrope',
    brightness: Brightness.light,
  );
}

ThemeData lightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      accentColor: black12,
    ),
    primaryColor: purple,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: purple.withOpacity(.5),
      cursorColor: purple.withOpacity(.6),
      selectionHandleColor: purple.withOpacity(1),
    ),
    platform: TargetPlatform.android,
    scaffoldBackgroundColor: white,
    fontFamily: 'Manrope',
    brightness: Brightness.light,
  );
}
