import 'package:flutter/material.dart';
import 'package:simple_memo/presentation/theme/colors.dart';
import 'package:simple_memo/presentation/theme/l10n.dart';
import 'package:simple_memo/presentation/widgets/gap.dart';
import 'package:simple_memo/presentation/theme/sizes.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        DrawerHeader(
          padding: const EdgeInsets.only(top: 16),
          margin: const EdgeInsets.all(0),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                ListTile(
                  title: const Text(L10n.home),
                  leading: const Icon(
                    Icons.house,
                    color: BrandColor.black,
                  ),
                  onTap: () {
                    context.push('/CheckBox');
                  },
                ),
                Gap.h(Sizes.p1),
                ListTile(
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: Text(L10n.all),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: BrandColor.black,
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.search), // 検索アイコン
                  onTap: () {
                    context.push('/b');
                  },
                ),
              ],
            ),
          ),
        ),
        ListTile(
          title: const Text(L10n.userHistory),
          leading: const Icon(
            Icons.description,
            color: BrandColor.blue,
          ),
          onTap: () {
            context.push('/UserHistory');
          },
        ),
        Gap.h(Sizes.p1),
        ListTile(
          title: const Text(L10n.bookmark),
          leading: const Icon(
            Icons.star,
            color: BrandColor.bananaYellow,
          ),
          onTap: () {
            context.push('/b');
          },
        ),
        Gap.h(Sizes.p1),
        ListTile(
          title: const Text(L10n.calendar),
          leading: const Icon(
            Icons.calendar_month,
            color: BrandColor.red,
          ),
          onTap: () {
            context.push('/c');
          },
        ),
        Gap.h(Sizes.p1),
        ListTile(
          title: const Text(L10n.category),
          leading: const Icon(
            Icons.inventory_2,
            color: BrandColor.lightBrown,
          ),
          onTap: () {
            context.push('/d');
          },
        ),
      ],
    );
  }
}
