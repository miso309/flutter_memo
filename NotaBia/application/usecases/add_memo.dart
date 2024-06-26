import 'package:cheatsheet/application/state/memo_list_provider.dart';
import 'package:cheatsheet/domain/features/memo_creater.dart';
import 'package:cheatsheet/application/config/memo.dart';
import 'package:cheatsheet/application/types/analytics_event.dart';
import 'package:cheatsheet/application/interfaces/firebase.dart';
import 'package:cheatsheet/application/interfaces/logger.dart';

class AddMemoUsecase {
  AddMemoUsecase({
     required this.logger,
     required this.listNotifier,
     required this.firebase,
   });
   final Logger logger;
   final MemoListProviderNotifier listNotifier;
   final FirebaseService firebase;

   Future<void> addNewMemo() async{
     logger.debug('AddMemoUsecase.addNewMemo()');
     firebase.sendEvent(AnalyticsEvent.addNewMemo);

     final creator = MemoCreater(
       defaultText: memoConfig.defaultText,
     );
     final memo = creator.createNewMemo();

     listNotifier.add(memo);
  }
}
