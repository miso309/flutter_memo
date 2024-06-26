import 'package:cheatsheet/presentation/widgets/details_button.dart';
import 'package:cheatsheet/presentation/widgets/folder_button.dart';
import 'package:cheatsheet/presentation/widgets/select_all_button.dart';
import 'package:cheatsheet/presentation/widgets/trash_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cheatsheet/application/di/usecases.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/domain/types/memo.dart';
import 'package:cheatsheet/application/state/button_provider.dart';


class OptionsButton extends HookConsumerWidget {
  const OptionsButton({
    super.key,
    required this.memo,
  });

  final Memo memo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = ref.watch(buttonProviderNotifierProvider);
      // すべてを選択
      final selectAll = SelectAllButton(
        onPressed: () {},
      );

      // フォルダアイコン
      final folderButton = FolderButton(
        onPressed: () {},
      );

      // ごみ箱アイコン
      final trashButton = TrashButton(
        onPressed: () {
          final usecase = ref.read(deleteMemoProvider);
          usecase.deleteMemo(memo.id);
        },
      );

      // 詳細ボタン
      final detailsButton = DetailsButton(
        onPressed: () {},
      );

    return Visibility(
      visible: isEditing,
      child: Row(
        children: [
          selectAll,
          const Spacer(),
          Row(
            children: [
              SizedBox(
                width: Sizes.p40,
                child: folderButton,
              ),
              SizedBox(
                width: Sizes.p40,
                child: trashButton,
                ),
              SizedBox(
                width: Sizes.p40,
                child: detailsButton,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
