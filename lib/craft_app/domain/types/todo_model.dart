import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_model.freezed.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    /// ID ('A'とか'B'とか他と被らないもの)
    required String id,

    /// メモ
    required String memo,

    /// 日付
    required String date,

    /// チェックされているかどうか (true | false)
    required bool isChecked,
  }) = _TodoModel;
}