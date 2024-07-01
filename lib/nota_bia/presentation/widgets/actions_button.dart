import 'package:nota_bia/application/state/button_provider.dart';
import 'package:flutter/material.dart';
import 'package:nota_bia/application/di/usecases.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/application/state/memo_list_provider.dart';

class ActionsButton extends ConsumerWidget {
  const ActionsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = ref.watch(buttonProviderNotifierProvider);
    final memoState = ref.watch(memoListProviderNotifierProvider);

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

    final memoCount = Text(
      '${memoState.length} ${L10n.number}',
      style: const TextStyle(color: BrandColor.darkGrey),
    );

    final sortButton = IconButton(
      onPressed: () {},
      icon: const Icon(
        CupertinoIcons.arrow_up_arrow_down_circle,
        color: BrandColor.enabledBlue,
      ),
    );

    return Visibility(
      visible: !isEditing,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          addButton,
          memoCount,
          sortButton,
        ],
      ),
    );
  }
}
