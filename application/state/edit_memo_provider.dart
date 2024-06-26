import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cheatsheet/domain/types/memo.dart';
import 'package:cheatsheet/application/state/memo_list_provider.dart';

part 'edit_memo_provider.g.dart';

/// 編集中メモを管理するノティファイヤ
@riverpod
class EditMemoProviderNotifier extends _$EditMemoProviderNotifier {
  @override
  Memo build(String id) {
    final list = ref.read(memoListProviderNotifierProvider);
    return list.firstWhere((memo) => memo.id == id);
  }

  /// 現在の状態
  Memo get value => state;

  /// 更新
  void update(Memo memo) {
    state = memo;
  }
}
