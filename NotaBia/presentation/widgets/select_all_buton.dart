import 'package:flutter/material.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';

/// 戻るボタン
class SelectAllButton extends StatelessWidget {
  const SelectAllButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {


    ///文字
    const text = Text(L10n.allSelect, style: BrandText.mBlue);

    ///レイアウト
    return TextButton.icon(
      onPressed: onPressed,
      label: text,
    );
  }
}
