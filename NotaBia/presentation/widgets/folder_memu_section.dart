import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';

/// イベント参加の履歴 1つ分
class FolderSection extends StatelessWidget {
  const FolderSection({
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
            leading: const Icon(CupertinoIcons.folder_badge_plus, color: BrandColor.wainRed),
            title: const Text(L10n.newFolder),
          ),
        ],
      ),
    );
  }
}
