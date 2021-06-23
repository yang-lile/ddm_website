import 'package:ddm_website/theme/text_theme.dart';
import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: HSLColor.fromColor(const Color(0xff00e4ff))
        .withSaturation(0.8)
        .toColor(),
  ),
  fontFamily: 'Georgia',
  primaryColor: Colors.blueAccent,
  textTheme: appTextTheme,
);
