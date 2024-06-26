import 'package:flutter/material.dart';
import 'package:cheatsheet/application/di/usecases.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/application/state/memo_list_provider.dart';

class ActionsButton extends ConsumerWidget {
  const ActionsButton({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // メモプロバイダーの状態を監視
    final memoState = ref.watch(memoListProviderNotifierProvider);

    // 追加ボタン
    final addButton = IconButton(
      onPressed: () {
        final usecase = ref.read(addMemoProvider);
        usecase.addNewMemo();
      },
      icon: const Icon(
        CupertinoIcons.add,
        color: BrandColor.enabledBlue,
      ),
    );

    // メモカウント
    final memoCount = Text(
      '${memoState.length} ${L10n.number}', // メモの数を表示
      style: const TextStyle(color: BrandColor.darkGrey),
    );

    // 並び替えボタン
    final sortButton = IconButton(
      onPressed: (){},
      icon: const Icon(
        CupertinoIcons.arrow_up_arrow_down_circle,
        color: BrandColor.enabledBlue,
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        addButton,
        memoCount,
        sortButton,
      ],
    );
  }
}
