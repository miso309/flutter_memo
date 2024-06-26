import 'package:cheatsheet/presentation/widgets/actions_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/widgets/edit_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/widgets/memo_list.dart';
import 'package:cheatsheet/domain/types/memo.dart';

class AllMemo extends HookConsumerWidget {
  const AllMemo({
    super.key,
    required this.memo,
  });

  final Memo memo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    //ページタイトル
    const pageTitle = Text(L10n.memo, style: BrandText.xlBold);


    return Scaffold(
      backgroundColor: BrandColor.white,
      appBar: AppBar(
        leadingWidth: Sizes.p110,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
            onPressed: (){
              context.pop();
            },
            icon: const Icon(CupertinoIcons.left_chevron, color: BrandColor.enabledBlue),
            label: const Text(L10n.back, style: BrandText.lBlue),
          ),
        ),
        actions: [
          EditButton(memo: memo),
        ],
        backgroundColor: BrandColor.white,
      ),
      body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(Sizes.p16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: pageTitle,
              ),
            ),
            Expanded(
              child: MemoList(),
            ),
          ],
      ),
      bottomNavigationBar: const BottomAppBar(
        color: BrandColor.white,
        child: SizedBox(
          height: Sizes.p80,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.p16,
              vertical: Sizes.p8,
            ),
            child: ActionsButton(),
          ),
        ),
      ),
    );
  }
}
