import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/mycolors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomThemeExtension>()!;

    return Material(
      color: customTheme.langBtnColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: customTheme.langBtnLightColor,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.language, color: MyColors.greenDark),
              SizedBox(width: 10),
              Text("English", style: TextStyle(color: MyColors.greenDark)),
              SizedBox(width: 10),
              Icon(Icons.keyboard_arrow_down, color: MyColors.greenDark),
            ],
          ),
        ),
      ),
    );
  }
}
