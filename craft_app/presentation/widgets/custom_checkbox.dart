import 'package:flutter/material.dart';
import 'package:memo_list/presentation/theme/colors.dart';

/* todo_card　を頑張って作ったので このファイルはもう不要です。  */

/// カスタマイズしたチェックボックスのWidgetクラス
class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    // チェックボックスのアクティブ色を設定できる (デフォルトは青色)
    this.activeColor = BrandColor.blue,
    // チェックボックスの周りのパディングを設定できる (デフォルトは8ピクセル)
    this.padding = const EdgeInsets.all(8),
    // タイトルがタップされたときの処理を設定できる
    this.onTapTitle,
    // タイトルが長押しされたときの処理を設定できる
    this.onLongPressTitle,
    // チェックボックスの隣に表示するタイトルWidget
    required this.title,
    // チェックボックスの選択状態
    required this.value,
    // チェックボックスの状態が変更されたときのコールバック
    required this.onChanged,
  });

  // チェックボックスのアクティブ色
  final Color activeColor;
  // チェックボックスの周りのパディング
  final EdgeInsets padding;
  // タイトルWidget
  final Widget title;
  // チェックボックスの選択状態
  final bool value;
  // チェックボックスの状態が変更されたときのコールバック
  final ValueChanged<bool> onChanged;
  // タイトルがタップされたときの処理
  final VoidCallback? onTapTitle;
  // タイトルが長押しされたときの処理
  final VoidCallback? onLongPressTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // タイトルがタップされたときの処理
      onTap: onTapTitle,
      // タイトルが長押しされたときの処理
      onLongPress: onLongPressTitle,
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            InkWell(
              // チェックボックスがタップされたときの処理
              onTap: () => onChanged(!value),
              child: Checkbox(
                // チェックボックスのアクティブ色
                activeColor: activeColor,
                // チェックボックスの選択状態
                value: value,
                // チェックボックスの状態が変更されたときのコールバック
                onChanged: (newValue) {
                  onChanged(newValue!);
                },
              ),
            ),
            // タイトルWidget
            Expanded(
              child: title,
            ),
          ],
        ),
      ),
    );
  }
}
