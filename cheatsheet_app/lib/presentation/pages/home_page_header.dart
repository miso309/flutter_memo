import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
    required this.onPressedEditButton,
  });

  final void Function() onPressedEditButton;

  @override
  Widget build(BuildContext context) {

    //ページタイトル
    const homeTitle = Text(
      L10n.Cheatsheet,
      textAlign: TextAlign.left,
      style: BrandText.xxlBold,
    );

    //編集ボタン
    final editButton = TextButton(
      onPressed: onPressedEditButton,
      child: Text(L10n.edit),
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize:Sizes.p18),
        foregroundColor: BrandColor.wainRed,
        alignment: Alignment.topRight,
      ),
    );

    return Material(
      child: Container(
        color: BrandColor.lightGrey,
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: Sizes.p60),
                  child: editButton,
                ),
              ],
            ),
            SizedBox(
              height: Sizes.p80,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0), // 左に20ピクセルのインデントを追加
                    child: homeTitle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}

