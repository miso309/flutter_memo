import 'package:cheatsheet/application/di/usecases.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cheatsheet/application/state/button_provider.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';

/// 追加ボタン
class NavButton extends HookConsumerWidget {
  const NavButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = ref.watch(buttonProviderNotifierProvider);

    //戻るボタン
    final backButton = TextButton.icon(
      onPressed: () {
        context.pop();
      },
      icon: const Icon(
        CupertinoIcons.left_chevron,
        color: BrandColor.enabledBlue,
      ),
      label: const Text(L10n.back, style: BrandText.lBlue),
    );

    //編集ボタン
    final editButton = TextButton(
      onPressed: (){
        final usecase = ref.read(changeButtonProvider);
        usecase.changeButton();
      },
      child: Text(isEditing ? L10n.done : L10n.edit,
        style: BrandText.lBlue),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        backButton,
        editButton,
      ],
    );
  }
}
