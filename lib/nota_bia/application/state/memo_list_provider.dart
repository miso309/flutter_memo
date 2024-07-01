import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:nota_bia/domain/types/memo.dart';

part 'memo_list_provider.g.dart';

/// 編集中メモを管理するノティファイヤ
@riverpod
class MemoListProviderNotifier extends _$MemoListProviderNotifier {
  @override
  List<Memo> build() {
    return const [];
  }

  void set(List<Memo> list) {
    state = list;
  }

  void add(Memo memo) {
    state = [...state, memo];
  }

  void delete(String id) {
    final list = List.of(state);
    list.removeWhere(
        (memo) => memo.id == id,
    );
    state = list;
  }

  void replace(Memo memo) {
    state = state.map((old) {
      if (old.id == memo.id) {
        return memo;
      } else {
        return old;
      }
    }).toList();
  }

  void toggleEditing (){
    state = List.from(state);
  }

  void toggleChecked(String id) {
    final oldMemo = state.firstWhere((it) => it.id == id);
    final newMemo = Memo(
      id: oldMemo.id,
      text: oldMemo.text,
      isChecked: !(oldMemo.isChecked),
    );

    final newMemos = state.map(
        (it) {
          if (it.id == id) return newMemo;
          return it;
        },
    ).toList();
    state = newMemos;
  }
}
