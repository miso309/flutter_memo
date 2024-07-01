import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nota_bia/presentation/router/app.dart';

void main() {
  const app = App();
  const scope = ProviderScope(child: app);
  runApp(scope);
}
