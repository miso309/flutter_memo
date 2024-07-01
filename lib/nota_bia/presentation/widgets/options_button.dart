import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/presentation/widgets/details_button.dart';
import 'package:nota_bia/presentation/widgets/folder_button.dart';
import 'package:nota_bia/presentation/widgets/select_all_button.dart';
import 'package:nota_bia/presentation/widgets/trash_button.dart';
import 'package:flutter/material.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';
import 'package:nota_bia/domain/types/memo.dart';
import 'package:nota_bia/application/state/button_provider.dart';
import 'package:nota_bia/application/state/checkbox_provider.dart';
import 'package:nota_bia/application/di/usecases.dart';

class OptionsButton extends ConsumerWidget {
  const OptionsButton({
    super.key,
    required this.memo,
  });

  final Memo memo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = ref.watch(buttonProviderNotifierProvider);
    final isAnyChecked = ref.watch(checkboxProviderNotifierProvider);

    final selectAll = SelectAllButton(
      onPressed: () {
        ref.read(checkboxProviderNotifierProvider.notifier).toggle(!isAnyChecked);
      },
      text: isAnyChecked ? L10n.allSelect : L10n.nonSelect,
      textColor: BrandColor.enabledBlue,
    );

    final folderButton = FolderButton(
      onPressed: () {},
      iconColor: isAnyChecked ? BrandColor.grey : BrandColor.enabledBlue,
    );

    final trashButton = TrashButton(
      onPressed: () {
        final usecase = ref.read(deleteMemoProvider);
        usecase.deleteMemo(memo.id);
      },
      iconColor: isAnyChecked ? BrandColor.grey : BrandColor.enabledBlue,
    );

    final detailsButton = DetailsButton(
      onPressed: () {},
      iconColor: isAnyChecked ? BrandColor.grey : BrandColor.enabledBlue,
    );

    return Visibility(
      visible: isEditing,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
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
