import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_model.freezed.dart';

@freezed
class CheckModel with _$CheckModel {
  const factory CheckModel({
    /// ID
    required String id,

    /// 書かれた文字
    required String memo,

  }) = _CheckModel;
}