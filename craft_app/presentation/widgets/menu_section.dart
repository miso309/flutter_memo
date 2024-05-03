import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/theme/l10n.dart';
import 'package:memo_list/presentation/theme/sizes.dart';

/// イベント参加の履歴 1つ分
class MenuSection extends StatelessWidget {
  const MenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(Sizes.p2),
      color: BrandColor.white,
      child: Column(
        children: [
          ListTile(
            leading: Icon(CupertinoIcons.doc_on_doc, color: BrandColor.bitterPurpule),
            title: Text(L10n.allDocument),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: 20,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.calendar, color: BrandColor.dangerRed),
            title: Text(L10n.calendar),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: 20,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.star_fill, color: BrandColor.bananaYellow),
            title: Text(L10n.favorite),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: 20,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.tray_full, color: BrandColor.lightBrown),
            title: Text(L10n.uncategorized),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: 20,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.doc_append, color: BrandColor.lightPurpule),
            title: Text(L10n.template),
          ),
          Divider(
            height: Sizes.p1,
            thickness: Sizes.p2,
            color: BrandColor.lightGrey,
            indent: 20,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.arrowshape_turn_up_right_circle, color: BrandColor.turquoiseBlue),
            title: Text(L10n.contents),
          ),
        ],
      ),
    );
  }
}