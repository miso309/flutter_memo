import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/theme/l10n.dart';
import 'package:memo_list/presentation/widgets/gap.dart';
import 'package:memo_list/presentation/theme/sizes.dart';
import 'package:memo_list/presentation/theme/fonts.dart';

class MyFolderHeader extends StatelessWidget {
  const MyFolderHeader({
    super.key,
    required this.onPressedSettingButton,
  });

  final void Function() onPressedSettingButton;

  @override
  Widget build(BuildContext context) {
    final settingButton = IconButton(
      onPressed: onPressedSettingButton,
      icon: const Icon(CupertinoIcons.ellipsis_circle),
    );

    final userIcon = ClipOval(
      child: Icon(
        CupertinoIcons.person_circle_fill,
        size: Sizes.p40,
        color: BrandColor.darkGrey,
      ),
    );

    const folderTitle = Text(
      L10n.folder,
      textAlign: TextAlign.left,
      style: BrandText.xxlBold,
    );

    final searchBox = Container(
      width: Sizes.p600,
      height: Sizes.p40,
      decoration: BoxDecoration(
        color: BrandColor.lightGrey,
        borderRadius: BorderRadius.circular(Sizes.p30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: L10n.all,
          prefixIcon: Icon(
              CupertinoIcons.search,
            color: BrandColor.darkGrey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.p30),
            borderSide: BorderSide.none,
          ),
          fillColor: BrandColor.lightGrey,
          filled: true,
          contentPadding: EdgeInsets.only(left: Sizes.p20),
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      color: BrandColor.white,
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              settingButton,
            ],
          ),
          SizedBox(
            height: Sizes.p80,
            child: Row(
              children: [
                userIcon,
                Gap.w(Sizes.p10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: folderTitle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap.h(Sizes.p2),
          SizedBox(
            child: Column(
              children: [
                searchBox,
              ],
            ),
          ),
        ],
      ),
    );
  }
}