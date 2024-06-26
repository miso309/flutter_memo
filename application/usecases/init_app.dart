import 'package:cheatsheet/application/config/memo.dart';
import 'package:cheatsheet/application/state/memo_list_provider.dart';
import 'package:cheatsheet/application/types/analytics_event.dart';
import 'package:cheatsheet/application/interfaces/firebase.dart';
import 'package:cheatsheet/application/interfaces/logger.dart';

class InitAppUsecase {
  InitAppUsecase({
    required this.logger,
    required this.listNotifier,
    required this.firebase,
  });
  final Logger logger;
  final MemoListProviderNotifier listNotifier;
  final FirebaseService firebase;

  Future<void> execure() async{
    logger.debug('InitAppUsecase.execure()');
    firebase.sendEvent(AnalyticsEvent.addNewMemo);
    await firebase.init();
    final initialList = memoConfig.exampleMemos;
    listNotifier.set(initialList);
  }
}