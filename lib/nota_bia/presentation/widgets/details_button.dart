import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nota_bia/presentation/theme/colors.dart';

/// 戻るボタン
class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key,
    required this.onPressed,
    this.iconColor = BrandColor.enabledBlue, // 追加
  });

  final VoidCallback onPressed;
  final Color iconColor; // 追加

  @override
  Widget build(BuildContext context) {
    ///アイコン
    final icon = Icon(CupertinoIcons.ellipsis_circle, color: iconColor); // 修正

    ///レイアウト
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}
