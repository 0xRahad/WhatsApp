import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/mycolors.dart';

ThemeData lightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: MyColors.backgroundLight,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black), // Example text style using bodyLarge
    ),
      extensions: [
        CustomThemeExtension.lightMode
      ],
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.greenLight,
            foregroundColor: MyColors.backgroundLight,
            splashFactory: NoSplash.splashFactory,
            elevation: 0,
            shadowColor: Colors.transparent,
          )
      )
  );
}