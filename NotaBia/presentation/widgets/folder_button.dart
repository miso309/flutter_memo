import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';

/// 戻るボタン
class FolderButton extends StatelessWidget {
  const FolderButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    ///アイコン
    const icon = Icon(CupertinoIcons.folder, color: BrandColor.enabledBlue);

    ///レイアウト
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}