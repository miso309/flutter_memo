import 'package:nota_bia/presentation/widgets/actions_button.dart';
import 'package:nota_bia/presentation/widgets/options_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:nota_bia/domain/types/memo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/application/state/button_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';
import 'package:nota_bia/presentation/theme/fonts.dart';
import 'package:nota_bia/presentation/widgets/memo_list.dart';
import 'package:nota_bia/application/config/memo.dart';

class AllMemo extends ConsumerWidget {
  const AllMemo({
    super.key,
    this.memo,
  });

  final Memo? memo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = ref.watch(buttonProviderNotifierProvider);


    const pageTitle = Text(L10n.memo, style: BrandText.xlBold);

    // memoConfigのダミーデータを設定
    final Memo testMemo = memo ?? memoConfig.exampleMemos.first;

    return Scaffold(
      backgroundColor: BrandColor.white,
      appBar: AppBar(
        leadingWidth: Sizes.p110,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(CupertinoIcons.left_chevron, color: BrandColor.enabledBlue),
            label: const Text(L10n.back, style: BrandText.lBlue),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              final notifier = ref.read(buttonProviderNotifierProvider.notifier);
              notifier.toggle();
            },
            child: Text(isEditing ? L10n.done : L10n.edit, style: BrandText.lBlue),
          ),
        ],
        backgroundColor: BrandColor.white,
        elevation: Sizes.p0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.p16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: pageTitle,
            ),
          ),
          const Expanded(
            child: MemoList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: BrandColor.white,
        child: SizedBox(
          height: Sizes.p80,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p16,
              vertical: Sizes.p8,
            ),
            child: isEditing
                ? OptionsButton(memo: testMemo)
                : const ActionsButton(),
          ),
        ),
      ),
    );
  }
}
