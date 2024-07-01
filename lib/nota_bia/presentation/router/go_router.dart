import 'package:nota_bia/presentation/pages/home.dart';
import 'package:nota_bia/presentation/router/page_path.dart';
import 'package:nota_bia/presentation/widgets/all_memo.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nota_bia/domain/types/memo.dart';
import 'package:nota_bia/presentation/widgets/delete_memo.dart';

final goRouterProvider = Provider((ref) {
  final routes = [
    GoRoute(
      path: PageId.home.path,
      name: PageId.home.routeName,
      builder: (context, state) {
        return const Home();
      },
    ),
    GoRoute(
      path: PageId.memo.path,
      name: PageId.memo.routeName,
      builder: (context, state) {
        final memo = state.extra as Memo?;
        return AllMemo(memo: memo);
      },
    ),
    GoRoute(
      path: PageId.delete.path,
      name: PageId.delete.routeName,
      builder: (context, state) {
        return DeleteMemo();
      },
    ),
  ];
  return GoRouter(
    initialLocation: PageId.home.path,
    debugLogDiagnostics: false,
    routes: routes,
  );
});
