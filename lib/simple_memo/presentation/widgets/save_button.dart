import 'package:flutter/material.dart';
import 'package:simple_memo/presentation/theme/colors.dart';
import 'package:simple_memo/presentation/theme/fonts.dart';
import 'package:simple_memo/presentation/theme/l10n.dart';
import 'package:simple_memo/presentation/theme/sizes.dart';
import 'package:simple_memo/presentation/widgets/gap.dart';

/// 保存ボタン
class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.onPressed,
  });

  /// コールバック
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    /// アイコン
    const icon = Icon(Icons.check);

    /// 文字
    const text = Text(
      L10n.save,
      style: BrandText.bodyL,
    );

    /// レイアウト
    return FloatingActionButton.extended(
      heroTag: null,
      backgroundColor: BrandColor.bananaYellow,
      onPressed: onPressed,
      label: Row(
        children: [
          icon,
          Gap.w(RawSize.p8),
          text,
        ],
      ),
    );
  }
}