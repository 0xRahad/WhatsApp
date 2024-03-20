import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/mycolors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {

  static final lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: MyColors.greyLight,
    blueColor: MyColors.blueLight,
    langBtnColor: Color(0xFF7F8FA),
    langBtnLightColor: Color(0xFF8E8ED)
  );

  static final darkMode = CustomThemeExtension(
      circleImageColor: MyColors.greenDark,
      greyColor: MyColors.greyDark,
      blueColor: MyColors.blueDark,
      langBtnColor: Color(0xFF182229),
      langBtnLightColor: Color(0xFF09141A)
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnColor;
  final Color? langBtnLightColor;

  CustomThemeExtension(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langBtnColor,
      this.langBtnLightColor});

  @override
  ThemeExtension<CustomThemeExtension> copyWith({ Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnColor,
    Color? langBtnLightColor,
  }
  ) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnColor: langBtnColor ?? this.langBtnColor,
      langBtnLightColor: langBtnLightColor ?? this.langBtnLightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if(other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnColor: Color.lerp(langBtnColor, other.langBtnColor, t),
      langBtnLightColor: Color.lerp(langBtnLightColor, other.langBtnLightColor, t),
    );
  }
}
