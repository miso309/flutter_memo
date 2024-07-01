import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_memo/presentation/pages/user_history.dart';
import 'package:simple_memo/presentation/pages/page_b.dart';
import 'package:simple_memo/presentation/pages/page_d.dart';
import 'package:simple_memo/presentation/pages/page_c.dart';
import 'package:simple_memo/presentation/widgets/checkbox.dart';

/// Provide GoRouter
final goRouterProvider = Provider(
      (ref) {
    final routes = [
      GoRoute(
        path: '/CheckBox',
        builder: (context, state) => const CheckBox(),
      ),
      GoRoute(
        path: '/UserHistory',
        builder: (context, state) => const UserHistory(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, state) => const PageB(),
      ),
      GoRoute(
        path: '/c',
        builder: (context, state) => const PageC(),
      ),
      GoRoute(
        path: '/d',
        builder: (context, state) => const PageD(),
      ),
    ];

    return GoRouter(
      initialLocation: '/CheckBox',
      debugLogDiagnostics: false,
      routes: routes,
    );
  },
);
