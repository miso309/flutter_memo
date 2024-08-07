import 'package:simple_memo/domain/types/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todos_provider.g.dart';

@riverpod
class TodoModelsNotifier extends _$TodoModelsNotifier {
  @override
  List<TodoModel> build() {
    return const [
      TodoModel(id: 'A', memo: 'あいうえお'),
      TodoModel(id: 'B', memo: 'かきくけこ'),
      TodoModel(id: 'C', memo: 'さしすせそ'),
    ];
  }

  // 新しいToDoを追加する
  void addNewTodo() {
    final newModels = List.of(state);
    const newModel = TodoModel(id: 'D', memo: 'たちつてと');
    newModels.add(newModel);
    state = newModels;
  }

  // メモを編集する
  void updateMemo(String id, String memo) {
    final newModel = TodoModel(id: id, memo: memo);
    final newModels = state.map(
          (it) {
        if (it.id == id) return newModel;
        return it;
      },
    ).toList();
    state = newModels;
  }

  // メモを削除する
  void deleteTodo() {
    final newModels = List.of(state);
    const newModel = TodoModel(id: 'D', memo: 'たちつてと');
    newModels.remove(newModel);
    state = newModels;
  }
}
