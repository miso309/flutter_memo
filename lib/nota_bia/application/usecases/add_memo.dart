import 'package:nota_bia/application/state/memo_list_provider.dart';
import 'package:nota_bia/domain/features/memo_creater.dart';
import 'package:nota_bia/application/config/memo.dart';
import 'package:nota_bia/application/types/analytics_event.dart';
import 'package:nota_bia/application/interfaces/firebase.dart';
import 'package:nota_bia/application/interfaces/logger.dart';

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
