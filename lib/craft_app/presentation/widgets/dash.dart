import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/pages/home.dart';
import 'package:memo_list/presentation/pages/add.dart';
import 'package:memo_list/presentation/pages/my_folder.dart';
import 'package:memo_list/presentation/theme/l10n.dart';
import 'package:memo_list/presentation/theme/sizes.dart';


final tabIndexProvider = StateProvider((ref) {
  return 0;
});

// ホーム画面全体
class Dash extends ConsumerWidget {
  const Dash({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // インデックス
    final tabIndex = ref.watch(tabIndexProvider);

    // アイテムたち
    const items = [
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        label: L10n.home,
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.plus_square),
        label: L10n.add,
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.folder_open),
        label:L10n.myFolder,
      ),
    ];

    // 下のバー
    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: BrandColor.white, // バーの色
      selectedItemColor: BrandColor.enabledBlue, // 選ばれたアイテムの色
      unselectedItemColor: BrandColor.darkGrey, // 選ばれていないアイテムの色
      currentIndex: tabIndex,
      onTap: (index) {
        // タップされたとき インデックスを変更する
        ref.read(tabIndexProvider.notifier).state = index;
      },
      elevation: Sizes.zero,
    );

    // 画面たち
    const pages = [
      Home(), // 空のページ
      Add(), // 空のページ
      MyFolder(), // 空のページ
    ];

    return ColoredBox(
      color: BrandColor.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: BrandColor.lightGrey,
          body: pages[tabIndex],
          bottomNavigationBar: bar,
        ),
      ),
    );
  }
}