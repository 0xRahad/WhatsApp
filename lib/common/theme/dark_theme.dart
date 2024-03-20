import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/mycolors.dart';

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: MyColors.backgroundDark, // Use MyColors.backgroundDark as seed
      brightness: Brightness.dark,
    ),
    extensions: [
      CustomThemeExtension.darkMode
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.greenDark,
        foregroundColor: MyColors.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      )
    )
  );
}