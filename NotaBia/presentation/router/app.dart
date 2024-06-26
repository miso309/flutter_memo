import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cheatsheet/presentation/widgets/browser_adapter.dart';
import 'package:cheatsheet/presentation/router/test.dart';

/// アプリ本体
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerDelegate: router.routerDelegate, // GoRouter
      routeInformationParser: router.routeInformationParser, // GoRouter
      routeInformationProvider: router.routeInformationProvider, // GoRouter
      debugShowCheckedModeBanner: false,
      builder: (_, child) {
        return BrowserAdapter(child: child);
      },
      theme: ThemeData(
        fontFamily: 'Nato Sans JP'
      ),
    );
  }
}