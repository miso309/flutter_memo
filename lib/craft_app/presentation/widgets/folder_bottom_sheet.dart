import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memo_list/presentation/theme/l10n.dart';
import 'package:memo_list/presentation/theme/fonts.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/theme/sizes.dart';
import 'package:memo_list/presentation/widgets/gap.dart';
import 'package:memo_list/presentation/widgets/folder_switch.dart';


class FolderBottomSheet extends ConsumerWidget {
  const FolderBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // トグルスイッチ
    final isOn = ref.watch(isOnProvider);
    final toggleSwitch = Switch(
      value: isOn,
      onChanged: (isOn) {
        ref.read(isOnProvider.notifier).state = isOn;
      },
      // 色を変える
      activeColor: BrandColor.white,
      activeTrackColor: BrandColor.blue,
      inactiveThumbColor: BrandColor.white,
      inactiveTrackColor: BrandColor.darkGrey,
    );

    return Container(
      padding: const EdgeInsets.all(Sizes.p16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.p16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(L10n.customization, style: BrandText.xlBold),
              IconButton(
                icon: const Icon(CupertinoIcons.clear_circled),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                leading: Icon(CupertinoIcons.doc_on_doc, color: BrandColor.black),
                title: Text(L10n.allDocument),
                trailing: toggleSwitch,
              ),
              Gap.h(Sizes.p5),
              ListTile(
                leading: Icon(CupertinoIcons.calendar, color: BrandColor.black),
                title: Text(L10n.calendar),
                trailing: toggleSwitch,
              ),
              Gap.h(Sizes.p5),
              ListTile(
                leading: Icon(CupertinoIcons.star_fill, color: BrandColor.black),
                title: Text(L10n.favorite),
                trailing: toggleSwitch,
              ),
              Gap.h(Sizes.p5),
              ListTile(
                leading: Icon(CupertinoIcons.tray_full, color: BrandColor.black),
                title: Text(L10n.uncategorized),
                trailing: toggleSwitch,
              ),
              Gap.h(Sizes.p5),
              ListTile(
                leading: Icon(CupertinoIcons.doc_append, color: BrandColor.black),
                title: Text(L10n.template),
                trailing: toggleSwitch,
              ),
              Gap.h(Sizes.p5),
              ListTile(
                leading: Icon(CupertinoIcons.arrowshape_turn_up_right_circle, color: BrandColor.black),
                title: Text(L10n.contents),
                trailing: toggleSwitch,
              ),
            ],
          ),
          // ここに他のウィジェットを追加
        ],
      ),
    );
  }
}
