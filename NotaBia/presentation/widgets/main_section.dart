import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';

/// イベント参加の履歴 1つ分
class MainSection extends StatelessWidget {
  const MainSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(Sizes.p2),
      decoration: BoxDecoration(
        color: BrandColor.white,
        borderRadius: BorderRadius.circular(Sizes.p20),
      ),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(CupertinoIcons.star, color: BrandColor.wainRed),
            title: const Text(L10n.cheat),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: 20,
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.trash, color: BrandColor.wainRed),
            title: const Text(L10n.current),
          ),
        ],
      ),
    );
  }
}
