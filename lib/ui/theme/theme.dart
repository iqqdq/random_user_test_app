import 'dart:io';
import 'package:flutter/material.dart';
import 'package:random_user_test_app/core/core.dart';

final themeData = ThemeData(
  useMaterial3: true,
  iconTheme: IconThemeData(color: HexColors.white),
  scaffoldBackgroundColor: HexColors.white,
  primaryColor: HexColors.blue,
  cardColor: HexColors.white,
  dividerColor: HexColors.black.withOpacity(0.1),
  splashFactory: Platform.isMacOS || Platform.isIOS
      ? NoSplash.splashFactory
      : InkSparkle.splashFactory,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: HexColors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: HexColors.black,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: HexColors.black,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: HexColors.black.withOpacity(0.5),
    ),
  ),
);
