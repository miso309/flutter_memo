import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_memo/presentation/theme/colors.dart';
import 'package:simple_memo/application/state/todos_provider.dart';
import 'package:simple_memo/presentation/theme/sizes.dart';
import 'package:simple_memo/presentation/widgets/custom_checkbox.dart';

class UserHistory extends ConsumerWidget {
  const UserHistory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 全てのTodoモデルたち
    final allModels = ref.watch(todoModelsNotifierProvider);
    // チェックが入っていないToDoモデルたち
    final models = allModels.where((it) => it.isChecked);

    void onChangedCheckbox(String id) {
      // ノティファイヤーを使って状態を変える
      final notifier = ref.read(todoModelsNotifierProvider.notifier);
      notifier.toggleCheck(id);
    }


    final col = Column(
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: BrandColor.lightGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(RawSize.p4),
        child: col,
      ),
    );
  }
}
