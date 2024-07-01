import 'package:nota_bia/presentation/router/go_router.dart';
import 'package:nota_bia/presentation/router/page_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nota_bia/presentation/theme/fonts.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


/// イベント参加の履歴 1つ分
class MainSection extends ConsumerWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
        padding: const EdgeInsets.all(Sizes.p2),
        decoration: BoxDecoration(
          color: BrandColor.white,
          border: Border.all(color: BrandColor.lightGrey),
          borderRadius: BorderRadius.circular(Sizes.p20),
        ),
        child: Column(
            children: [
              ListTile(
                leading: const Icon(CupertinoIcons.star, color: BrandColor.enabledBlue),
                title: const Text(L10n.memo, style: BrandText.m),
                onTap: () {
                  final router = ref.read(goRouterProvider);
                  router.pushNamed(
                    PageId.memo.routeName,
                  );
                },
              ),
              const Divider(
                height: Sizes.p1,
                thickness: Sizes.p2,
                color: BrandColor.lightGrey,
                indent: 20,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.trash, color: BrandColor.enabledBlue),
                title: const Text(L10n.trush, style: BrandText.m),
                onTap: () {
                  final router = ref.read(goRouterProvider);
                  router.pushNamed(
                    PageId.delete.routeName,
                  );
                },
              ),
            ],
          ),
        );
  }
}
