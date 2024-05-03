import 'package:cheatsheet/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cheatsheet/presentation/widgets/cheat_section.dart';
import 'package:cheatsheet/presentation/widgets/delete_item.dart';

/// Provide GoRouter
final goRouterProvider = Provider(
      (ref) {
    final routes = [
      GoRoute(
        path: '/HomePage',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/a',
        builder: (context, state) => const PageA(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, state) => const PageB(),
      ),
    ];

    return GoRouter(
      initialLocation: '/HomePage',
      debugLogDiagnostics: false,
      routes: routes,
    );
  },
);