import 'package:cheatsheet/application/state/button_provider.dart';
import 'package:cheatsheet/application/usecases/change_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cheatsheet/application/state/memo_list_provider.dart';
import 'package:cheatsheet/application/state/edit_memo_provider.dart';
import 'package:cheatsheet/application/usecases/add_memo.dart';
import 'package:cheatsheet/application/usecases/delete_memo.dart';
import 'package:cheatsheet/application/usecases/init_app.dart';
import 'package:cheatsheet/application/usecases/update_memo.dart';
import 'package:cheatsheet/application/di/infrastructure.dart';

/// Init App
final initAppProvider = Provider<InitAppUsecase>(
      (ref) {
    final logger = ref.read(loggerProvider);
    final firebase = ref.watch(firebaseProvider);
    final listNotifier = ref.refresh(memoListProviderNotifierProvider.notifier);
    return InitAppUsecase(
      logger: logger,
      firebase: firebase,
      listNotifier: listNotifier,
    );
  },
);

/// Add Memo
final addMemoProvider = Provider<AddMemoUsecase>(
      (ref) {
    final logger = ref.read(loggerProvider);
    final firebase = ref.watch(firebaseProvider);
    final listNotifier = ref.refresh(memoListProviderNotifierProvider.notifier);
    return AddMemoUsecase(
      logger: logger,
      firebase: firebase,
      listNotifier: listNotifier,
    );
  },
);

/// Delete Memo
final deleteMemoProvider = Provider<DeleteMemoUsecase>(
      (ref) {
    final logger = ref.read(loggerProvider);
    final firebase = ref.watch(firebaseProvider);
    final listNotifier = ref.refresh(memoListProviderNotifierProvider.notifier);
    return DeleteMemoUsecase(
      logger: logger,
      firebase: firebase,
      listNotifier: listNotifier,
    );
  },
);

/// Update Memo
final updateMemoProvider = Provider.family<UpdateMemoUsecase, String>(
      (ref, id) {
    final logger = ref.read(loggerProvider);
    final firebase = ref.watch(firebaseProvider);
    final listNotifier = ref.refresh(memoListProviderNotifierProvider.notifier);
    final edittingNotifier = ref.refresh(editMemoProviderNotifierProvider(id).notifier);
    return UpdateMemoUsecase(
      logger: logger,
      firebase: firebase,
      listNotifier: listNotifier,
      edittingNotifier: edittingNotifier,
    );
  },
);

final changeButtonProvider = Provider<ChangeButtonUsecase>(
      (ref) {
    final logger = ref.read(loggerProvider);
    final firebase = ref.watch(firebaseProvider);
    final changeNotifier = ref.refresh(buttonProviderNotifierProvider.notifier);
    return ChangeButtonUsecase(
      logger: logger,
      firebase: firebase,
      buttonNotifier: changeNotifier,
    );
  },
);