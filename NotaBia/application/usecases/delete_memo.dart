import 'package:cheatsheet/application/state/memo_list_provider.dart';
import 'package:cheatsheet/application/types/analytics_event.dart';
import 'package:cheatsheet/application/interfaces/firebase.dart';
import 'package:cheatsheet/application/interfaces/logger.dart';

/// メモを削除する
class DeleteMemoUsecase {
  DeleteMemoUsecase({
    required this.logger,
    required this.listNotifier,
    required this.firebase,
  });
  final Logger logger;
  final MemoListProviderNotifier listNotifier;
  final FirebaseService firebase;

  /// メモを削除する
  Future<void> deleteMemo(String id) async {
    logger.debug('DeleteMemoUsecase.deleteMemo()');
    // Firebaseにイベントを報告する
    firebase.sendEvent(AnalyticsEvent.deleteMemo);
    // リストから削除して状態を変更
    listNotifier.delete(id);
  }
}