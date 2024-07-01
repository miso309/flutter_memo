import 'package:flutter/material.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/presentation/theme/fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nota_bia/application/state/button_provider.dart';
import 'package:nota_bia/presentation/widgets/main_section.dart';
import 'package:nota_bia/presentation/widgets/folder_section.dart';
import 'package:nota_bia/presentation/widgets/setting_section.dart';
import 'package:nota_bia/presentation/widgets/gap.dart';

class Home extends ConsumerWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isEditing = ref.watch(buttonProviderNotifierProvider);

    // ページタイトル
    const homeTitle = Text(
      L10n.NotaBia,
      textAlign: TextAlign.left,
      style: BrandText.xlBold,
    );

    return Scaffold(
      backgroundColor: BrandColor.lightGrey,
      appBar: AppBar(
        leadingWidth: Sizes.p110,
        actions: [
          TextButton(
            onPressed: () {
              final notifier = ref.read(buttonProviderNotifierProvider.notifier);
              notifier.toggle();
            },
            child: Text(isEditing ? L10n.done : L10n.edit, style: BrandText.lBlue),
          ),
        ],
        backgroundColor: BrandColor.lightGrey,
      ),
      body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(Sizes.p16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: homeTitle,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(Sizes.p20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MainSection(),
                    Gap.h(Sizes.p40),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0), // 20ピクセルの左インデント
                      child: Text(L10n.folder, style: BrandText.lBold),
                    ),
                    Gap.h(Sizes.p10),
                    const FolderSection(),
                    Gap.h(Sizes.p40),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0), // こちらにも同様のインデント
                      child: Text(L10n.setting, style: BrandText.lBold),
                    ),
                    Gap.h(Sizes.p10),
                    const SettingMenuSection(),
                    const SizedBox(height: Sizes.p150),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
