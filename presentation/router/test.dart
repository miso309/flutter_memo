import 'package:cheatsheet/presentation/pages/home_page.dart';
import 'package:cheatsheet/presentation/router/page_path.dart';
import 'package:cheatsheet/presentation/widgets/all_memo.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


final goRouterProvider = Provider(
        (ref) {
      final routes = [
        GoRoute(
          path: PageId.home.path,
          name: PageId.home.routeName,
          builder: (context, state) {
            return const HomePage(memo: memo);
            }
        ),
         GoRoute(
          path: PageId.memo.path,
          name: PageId.memo.routeName,
          builder: (context, state) {
            final memo = state.pathParameters['memo'];
            return AllMemo(memo: memo);
          },
         ),
      ];
      return GoRouter(
        initialLocation: PageId.home.path,
        debugLogDiagnostics: false,
        routes: routes,
      );
    }
);