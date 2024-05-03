import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_memo/presentation/router/app.dart';

void main() {
  const app = App();
  const scope = ProviderScope(child: app);
  runApp(scope);
}
