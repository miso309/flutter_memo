import 'package:flutter/material.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/widgets/folder_section.dart';
import 'package:cheatsheet/presentation/widgets/main_menu.dart';
import 'package:cheatsheet/presentation/widgets/setting_section.dart';
import 'package:cheatsheet/presentation/widgets/gap.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key,});

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Container(
        color: BrandColor.lightGrey,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(Sizes.p20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MainMenu(),
                  Gap.h(Sizes.p40),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0), // 20ピクセルの左インデント
                    child: Text(L10n.folder, style: BrandText.lBold),
                  ),
                  Gap.h(Sizes.p10),
                  const FolderSection(),
                  Gap.h(Sizes.p40),
                 const  Padding(
                    padding: EdgeInsets.only(left: 20.0), // こちらにも同様のインデント
                    child: Text(L10n.setting, style: BrandText.lBold),
                  ),
                  Gap.h(Sizes.p10),
                  const SettingMenuSection(),
                  const SizedBox(height: Sizes.p150),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
