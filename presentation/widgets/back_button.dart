import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';

/// 戻るボタン
class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    ///アイコン
    const icon = Icon(CupertinoIcons.left_chevron, color: BrandColor.enabledBlue);

    ///文字
    const text = Text(L10n.back, style: BrandText.lBold);

    ///レイアウト
    return TextButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: text,
    );
  }
}