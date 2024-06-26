import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';

/// 戻るボタン
class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    ///アイコン
    const icon = Icon(CupertinoIcons.ellipsis_circle, color: BrandColor.enabledBlue);

    ///レイアウト
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}