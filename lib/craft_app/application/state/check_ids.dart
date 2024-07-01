import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'check_ids.g.dart';

@riverpod
class CheckIdsNotifier extends _$CheckIdsNotifier {
  @override
  List<String> build() {
    return [];
  }

  // チェックボックスがタップされたとき
  void onTapCheckbox(String id) {
    // 新しいデータを準備する (List.of で古いデータをコピーできる)
    final newIds = List.of(state);
    if (newIds.contains(id)) {
      // もうチェックされていたら取り除く
      newIds.remove(id);
    } else {
      // まだチェックされていなかったら追加する
      newIds.add(id);
    }
    // データを上書き
    state = newIds;
  }

  void toMoveCheckbox(String id) {
    // まずは新しいデータを準備します（List.ofで古いデータをコピー）
    final newIds = List.of(state);
    if (newIds.contains(id)) {
      newIds.add(id);
    } else if (newIds.contains(id)) {
      newIds.remove(id);
    }
    // データを上書き
    state = newIds;
  }
}