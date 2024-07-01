import 'package:nota_bia/application/state/memo_list_provider.dart';
import 'package:nota_bia/application/types/analytics_event.dart';
import 'package:nota_bia/application/interfaces/firebase.dart';
import 'package:nota_bia/application/interfaces/logger.dart';

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