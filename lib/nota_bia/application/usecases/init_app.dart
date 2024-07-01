import 'package:nota_bia/application/config/memo.dart';
import 'package:nota_bia/application/state/memo_list_provider.dart';
import 'package:nota_bia/application/types/analytics_event.dart';
import 'package:nota_bia/application/interfaces/firebase.dart';
import 'package:nota_bia/application/interfaces/logger.dart';

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