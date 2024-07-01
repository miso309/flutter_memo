import 'package:nota_bia/application/state/button_provider.dart';
import 'package:nota_bia/application/types/analytics_event.dart';
import 'package:nota_bia/application/interfaces/firebase.dart';
import 'package:nota_bia/application/interfaces/logger.dart';

class ChangeButtonUsecase {
  ChangeButtonUsecase({
    required this.logger,
    required this.buttonNotifier,
    required this.firebase,
  });
  final Logger logger;
  final ButtonProviderNotifier buttonNotifier;
  final FirebaseService firebase;

  /// ボタンの状態を変更する
  Future<void> changeButton() async {
    logger.debug('ChangeButtonUsecase.changeButton()');
    // Firebaseにイベントを報告する
    firebase.sendEvent(AnalyticsEvent.changeButton);
    // ボタンの状態を変更
    buttonNotifier.toggle();
  }
}