import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/widgets/folder_memu_section.dart';
import 'package:cheatsheet/presentation/widgets/main_menu_section.dart';
import 'package:cheatsheet/presentation/widgets/setting_menu_section.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/widgets/gap.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';


class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: BrandColor.lightGrey,
          borderRadius: BorderRadius.circular(Sizes.p16),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(Sizes.p20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainMenuSection(),
                  Gap.h(Sizes.p40),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0), // 20ピクセルの左インデント
                    child: const Text(
                      L10n.folder,
                      style: BrandText.xlBold,
                    ), // ここに閉じ括弧が必要
                  ),
                  Gap.h(Sizes.p10),
                  FolderMenuSection(),
                  Gap.h(Sizes.p40),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0), // こちらにも同様のインデント
                    child: const Text(
                      L10n.setting,
                      style: BrandText.xlBold,
                    ), // ここにも閉じ括弧が必要
                  ),
                  Gap.h(Sizes.p10),
                  SettingMenuSection(),
                  SizedBox(height: Sizes.p150),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}