import 'package:nota_bia/domain/features/memo_updater.dart';
import 'package:nota_bia/domain/features/memo_validater.dart';
import 'package:nota_bia/application/config/memo.dart';
import 'package:nota_bia/application/state/edit_memo_provider.dart';
import 'package:nota_bia/application/state/memo_list_provider.dart';
import 'package:nota_bia/application/interfaces/firebase.dart';
import 'package:nota_bia/application/interfaces/logger.dart';

/// メモを変更する
class UpdateMemoUsecase {
  UpdateMemoUsecase({
    required this.logger,
    required this.edittingNotifier,
    required this.listNotifier,
    required this.firebase,
  });
  final Logger logger;
  final EditMemoProviderNotifier edittingNotifier;
  final MemoListProviderNotifier listNotifier;
  final FirebaseService firebase;

  /// メモの内容を編集する
  Future<void> editText(String newText) async {
    logger.debug('UpdateMemoUsecase.newText()');
    // ドメインを呼んでステータスを変更する
    final updater = MemoUpdater();
    final memo = updater.updateText(
      edittingNotifier.value,
      newText,
    );
    // 編集中のメモの状態を変更する
    edittingNotifier.update(memo);
  }

  /// 編集した内容を保存する
  Future<void> save({
    required void Function() onValidateFailure,
    required void Function() onSuccess,
  }) async {
    logger.debug('UpdateMemoUsecase.save()');
    // ドメインを呼んで内容をチェックする
    final validater = MemoValidater(
      maxLength: memoConfig.maxLength,
    );
    final ok = validater.validateLength(
      edittingNotifier.value,
    );
    // ルール違反のときはダイアログを表示して終了
    if (!ok) {
      onValidateFailure();
      return;
    }
    // リスト一覧のメモを上書きして状態を変更
    listNotifier.replace(
      edittingNotifier.value,
    );
    // 成功を知らせる
    onSuccess();
  }
}