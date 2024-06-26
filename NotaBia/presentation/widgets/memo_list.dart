import 'package:cheatsheet/application/state/button_provider.dart';
import 'package:cheatsheet/presentation/widgets/swipe_button.dart';
import 'package:flutter/material.dart';
import 'package:cheatsheet/application/state/memo_list_provider.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cheatsheet/application/di/usecases.dart';


class MemoList extends ConsumerWidget {
  const MemoList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isEditing = ref.watch(buttonProviderNotifierProvider);

    final memoList = ref.watch(memoListProviderNotifierProvider);

    ///    final memos = memoList.where((it) => !(it.isChecked));

    void onChangedCheckbox(String id) {
      final notifier = ref.read(memoListProviderNotifierProvider.notifier);
      notifier.toggleChecked(id);
    }

    void onDismissed(String id) {
      final usecase = ref.read(deleteMemoProvider);
      usecase.deleteMemo(id);
    }


    return ListView.separated(
      itemCount: memoList.length,
      separatorBuilder: (context, index) => const Divider(
        color: BrandColor.grey,
        height: Sizes.p1,
        thickness: Sizes.p2,
        indent: Sizes.p65,
      ),
      itemBuilder: (context, index) {
        final memo = memoList[index];
        return Dismissible(
          key: Key(memo.id),
          background:  const SwipeButton(),
          onDismissed: (direction) => onDismissed(memo.id),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
            leading: isEditing ? Checkbox(
              activeColor: BrandColor.grey,
              value: memo.isChecked,
              onChanged: (check) => onChangedCheckbox(memo.id),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.p18),
              ),
            )
                : const SizedBox(width: Sizes.p0),
            title: Padding(
              padding: EdgeInsets.only(left: isEditing ? 0 : Sizes.p16),
              child: Text(memo.text),
            ),
            tileColor: BrandColor.white,
          ),
        );
      }
    );
  }
}
