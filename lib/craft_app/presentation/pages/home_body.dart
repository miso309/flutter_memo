import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memo_list/application/state/todos_provider.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/theme/sizes.dart';
import 'package:memo_list/presentation/theme/l10n.dart';
import 'package:memo_list/presentation/widgets/gap.dart';
import 'package:memo_list/presentation/widgets/custom_checkbox.dart';


class HomeBody extends ConsumerWidget {
  const HomeBody({
    super.key,
    required this.onPressedUserHistoryButton,
    required this.onPressedShareButton,
  });

  final void Function() onPressedUserHistoryButton;
  final void Function() onPressedShareButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allModels = ref.watch(todoModelsNotifierProvider);
    // チェックが入っていないToDoモデルたち
    final models = allModels.where((it) => !(it.isChecked));

    void onChangedCheckbox(String id) {
      // ノティファイヤーを使って状態を変える
      final notifier = ref.read(todoModelsNotifierProvider.notifier);
      notifier.toggleCheck(id);
    }

    final layout = Column(
      children: [
        // Todoモデルの数だけ繰り返す
        for (final model in models)
          CustomCheckbox(
            onChanged: (check) => onChangedCheckbox(model.id),
            value: model.isChecked,
            title: Text(model.memo),
          ),
      ],
    );

    final userHistoryButton = ElevatedButton(
      onPressed: onPressedUserHistoryButton,
      style: ElevatedButton.styleFrom(
        backgroundColor: BrandColor.lightGrey, // ボタンの背景色
        foregroundColor: BrandColor.black,
        minimumSize: Size(Sizes.p180, Sizes.p40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p20), // 角を丸くする
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min, // コンテンツに合わせて幅を調整
        children: [
          Text(L10n.userHistory),
        ],
      ),
    );

    final shareButton = ElevatedButton(
      onPressed: onPressedShareButton,
      style: ElevatedButton.styleFrom(
        backgroundColor: BrandColor.lightGrey, // ボタンの背景色
        foregroundColor: BrandColor.black,
        minimumSize: Size(Sizes.p180, Sizes.p40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p20), // 角を丸くする
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min, // コンテンツに合わせて幅を調整
        children: [
          Text(L10n.share),
        ],
      ),
    );


    return Container(
      padding: const EdgeInsets.all(Sizes.p1),
      color: BrandColor.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              userHistoryButton,
              Gap.w(Sizes.p5),
              shareButton,
            ],
          ),
          layout,
        ],
      ),
    );
  }
}