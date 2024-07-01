import 'package:flutter/material.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';

/// カスタマイズしたチェックボックス
class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    this.activeColor = BrandColor.lightGrey,
    this.padding = const EdgeInsets.all(Sizes.p8),
    this.onTapTitle,
    this.onLongPressTitle,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final Color activeColor;
  final EdgeInsets padding;
  final Widget title;
  final bool value;
  final ValueChanged<bool> onChanged;
  final VoidCallback? onTapTitle;
  final VoidCallback? onLongPressTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapTitle,
      onLongPress: onLongPressTitle,
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            InkWell(
              onTap: () => onChanged(!value),
              child: Checkbox(
                activeColor: activeColor,
                value: value,
                onChanged: (newValue) {
                  onChanged(newValue!);
                },
              ),
            ),
            Expanded(
              child: title,
            ),
          ],
        ),
      ),
    );
  }
}