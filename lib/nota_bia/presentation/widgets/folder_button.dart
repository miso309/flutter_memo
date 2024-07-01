import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nota_bia/presentation/theme/colors.dart';

/// 戻るボタン
class FolderButton extends StatelessWidget {
  const FolderButton({
    super.key,
    required this.onPressed,
    this.iconColor = BrandColor.enabledBlue, // 追加
  });

  final VoidCallback onPressed;
  final Color iconColor; // 追加

  @override
  Widget build(BuildContext context) {
    ///アイコン
    final icon = Icon(CupertinoIcons.folder, color: iconColor); // 修正

    ///レイアウト
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}
