import 'package:flutter/material.dart';
import 'package:nota_bia/presentation/theme/fonts.dart';

/// 戻るボタン
class SelectAllButton extends StatelessWidget {
  const SelectAllButton({
    super.key,
    required this.onPressed,
    required this.text, // 追加
    this.textColor = Colors.blue, // 追加
  });

  final VoidCallback onPressed;
  final String text; // 追加
  final Color textColor; // 追加

  @override
  Widget build(BuildContext context) {
    ///文字
    final buttonText = Text(text, style: BrandText.m.copyWith(color: textColor)); // 修正

    ///レイアウト
    return TextButton.icon(
      onPressed: onPressed,
      label: buttonText,
    );
  }
}
