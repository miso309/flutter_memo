import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cheatsheet/presentation/router/app.dart';

void main() {
  const app = App();
  const scope = ProviderScope(child: app);
  runApp(scope);
}