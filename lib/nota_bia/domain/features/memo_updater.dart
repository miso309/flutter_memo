import 'package:nota_bia/domain/types/memo.dart';

/// メモの更新ルールを担当するクラス
class MemoUpdater {
  /// ステータスを次に進める
  /// テキストを変更
  Memo updateText(Memo memo, String newText) {
    // テキストを変更
    return memo.copyWith(text: newText);
  }
}