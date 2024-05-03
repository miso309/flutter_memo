import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/application/state/todos_provider.dart';
import 'package:memo_list/presentation/theme/sizes.dart';
import 'package:memo_list/presentation/widgets/custom_checkbox.dart';

class CheckBox extends ConsumerWidget {
  const CheckBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 全てのTodoモデルたち
    final allModels = ref.watch(todoModelsNotifierProvider);
    // チェックが入っていないToDoモデルたち
    final models = allModels.where((it) => !(it.isChecked));

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
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: BrandColor.darkGrey,
              size: Sizes.p32,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: BrandColor.darkGrey,
              size: Sizes.p32,
            ),
            onPressed: () {
              final notifier = ref.read(todoModelsNotifierProvider.notifier);
              notifier.addNewTodo();
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: BrandColor.darkGrey,
              size: Sizes.p32,
            ),
            onPressed: (){
              final notifier = ref.read(todoModelsNotifierProvider.notifier);
              notifier.deleteTodo();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p4),
        child: col,
      ),
    );
  }
}