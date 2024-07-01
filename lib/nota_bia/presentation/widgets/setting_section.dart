import 'package:nota_bia/presentation/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';

/// イベント参加の履歴 1つ分
class SettingMenuSection extends StatelessWidget {
  const SettingMenuSection({super.key,});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(Sizes.p2),
      decoration: BoxDecoration(
        color: BrandColor.white,
        border: Border.all(color: BrandColor.lightGrey),
        borderRadius: BorderRadius.circular(Sizes.p20),
      ),
      child: const Column(
        children: [
          ListTile(
            leading: Icon(CupertinoIcons.gear, color: BrandColor.enabledBlue),
            title: Text(L10n.setting, style: BrandText.m),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: Sizes.p20,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cloud, color: BrandColor.enabledBlue),
            title: Text(L10n.iCloud, style: BrandText.m),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: Sizes.p20,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.question_circle, color: BrandColor.enabledBlue),
            title: Text(L10n.help, style: BrandText.m),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: Sizes.p20,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.heart_fill, color: BrandColor.enabledBlue),
            title: Text(L10n.upgrade, style: BrandText.m),
          ),
        ],
      ),
    );
  }
}
