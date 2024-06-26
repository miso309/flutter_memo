import 'package:cheatsheet/application/state/button_provider.dart';
import 'package:cheatsheet/application/types/analytics_event.dart';
import 'package:cheatsheet/application/interfaces/firebase.dart';
import 'package:cheatsheet/application/interfaces/logger.dart';

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