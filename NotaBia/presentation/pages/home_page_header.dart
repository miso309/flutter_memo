import 'package:flutter/material.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/widgets/edit_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cheatsheet/domain/types/memo.dart';

class HomePageHeader extends ConsumerWidget {
  const HomePageHeader({
    super.key,
    required this.memo,
  });

  final Memo memo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // ページタイトル
    const homeTitle = Text(
      L10n.NotaBia,
      textAlign: TextAlign.left,
      style: BrandText.xlBold,
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
                  child: EditButton(memo: memo),
                ),
              ],
            ),
            const SizedBox(
              height: Sizes.p80,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Sizes.p20), // 左に20ピクセルのインデントを追加
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
