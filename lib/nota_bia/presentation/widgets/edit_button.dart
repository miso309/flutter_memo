import 'package:flutter/material.dart';
import 'package:nota_bia/presentation/theme/fonts.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/application/state/button_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nota_bia/domain/types/memo.dart';

/// 編集ボタン
class EditButton extends ConsumerWidget {
  const EditButton({
    super.key,
    required this.memo,
  });

  final Memo? memo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isEditing = ref.watch(buttonProviderNotifierProvider);

    return Expanded(
      child: Align(
        alignment: Alignment.topRight,
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                final notifier = ref.read(buttonProviderNotifierProvider.notifier);
                notifier.toggle();
              },
              child: Text(isEditing ? L10n.done : L10n.edit, style: BrandText.lBlue),
            ),
          ],
        ),
      ),
    );
  }
}