import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 戻るボタン
class TrashButton extends ConsumerWidget {
  const TrashButton({
    super.key,
    required this.onPressed,
    this.iconColor = BrandColor.enabledBlue, // 追加
  });

  final VoidCallback onPressed;
  final Color iconColor; // 追加

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ///アイコン
    final icon = Icon(CupertinoIcons.trash, color: iconColor); // 修正

    ///レイアウト
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}
