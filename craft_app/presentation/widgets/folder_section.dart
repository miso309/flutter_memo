import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/theme/l10n.dart';
import 'package:memo_list/presentation/theme/sizes.dart';
import 'package:memo_list/presentation/widgets/gap.dart';
import 'package:memo_list/presentation/theme/fonts.dart';

/// イベント参加の履歴 1つ分
class FolderSection extends StatelessWidget {
  const FolderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      color: BrandColor.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: Sizes.p10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(L10n.folder, style: BrandText.xlBold,),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: Sizes.p60),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(CupertinoIcons.add_circled, color: BrandColor.black),
                  ),
                ),
              ),
            ],
          ),
          Gap.h(Sizes.p10),
          Center(
            child: Container(
              child: Text(L10n.folderTextMessage, style: BrandText.s),
            ),
          ),
          SizedBox(height: Sizes.p120),
        ]
      ),
    );
  }
}
