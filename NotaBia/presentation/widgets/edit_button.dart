import 'package:cheatsheet/presentation/widgets/actions_button.dart';
import 'package:cheatsheet/presentation/widgets/options_button.dart';
import 'package:flutter/material.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/application/state/button_provider.dart';
import 'package:cheatsheet/domain/types/memo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 編集ボタン
class EditButton extends ConsumerWidget {
  const EditButton({
    super.key,
    required this.memo,
  });

  final Memo memo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isEditing = ref.watch(buttonProviderNotifierProvider);


    return Column(
      children: [
        TextButton(
          onPressed: () {
            final notifier = ref.read(buttonProviderNotifierProvider.notifier);
            notifier.toggle();
          },
          child: Text(isEditing ? L10n.done : L10n.edit, style: BrandText.lBlue,),
        ),
        if (isEditing) OptionsButton(memo: memo)
        else ActionsButton(),
      ],
    );
  }
}