import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_memo/presentation/theme/colors.dart';
import 'package:simple_memo/application/state/todos_provider.dart';
import 'package:simple_memo/presentation/theme/sizes.dart';
import 'package:simple_memo/presentation/widgets/side_menu.dart';
import 'package:simple_memo/presentation/widgets/custom_checkbox.dart';
import 'package:simple_memo/presentation/widgets/todo_card.dart';

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

    // Drawerメニュー
    final drawer = Drawer(
      child: SideMenu(),
    );


    final col = Column(
      children: [
        // Todoモデルの数だけ繰り返す
        for (final model in models)
          CustomCheckbox(
            onChanged: (check) => onChangedCheckbox(model.id),
            value: model.isChecked,
            title: TodoCard(),
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
      drawer: drawer,
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p4),
        child: col,
      ),
    );
  }
}
