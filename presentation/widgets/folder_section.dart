import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // CupertinoIconsを正しくインポート
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/widgets/folder_bottom_sheet.dart';

/// フォルダーセクション
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
        border: Border.all(color: BrandColor.lightGrey),
        borderRadius: BorderRadius.circular(Sizes.p20),
      ),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(CupertinoIcons.folder, color: BrandColor.enabledBlue),
            title: const Text(L10n.newFolder, style: BrandText.m),
            onTap: () async {
              // 新しいフォルダを追加する処理
              final answer = await showModalBottomSheet<String>(
                context: context,
                isScrollControlled: true, // ボトムシートを全画面表示に近い形にする
                builder: (_) => const FolderBottomSheet(),
              );
              if (answer != null && answer.isNotEmpty) {
                // フォルダ追加の処理
                debugPrint('フォルダが追加されました: $answer');
              }
            },
          ),
          // フォルダリストを表示するためのウィジェットをここに追加できます
        ],
      ),
    );
  }
}
