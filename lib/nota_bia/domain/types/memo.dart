import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo.freezed.dart';

@freezed
class Memo with _$Memo {
  const factory Memo({

    /// ID
    required String id,

    /// 書かれた文字
    required String text,

    required bool isChecked,


  }) = _Memo;
}