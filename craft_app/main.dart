import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memo_list/presentation/widgets/dash.dart';

void main() {
  // ホーム画面
  const home = Dash();
  // アプリ
  const app = MaterialApp(
    home: home,
    debugShowCheckedModeBanner: false, // 開発版の印を外す
  );
  // 状態管理の riverpod スコープ
  const scopedApp = ProviderScope(child: app);
  // アプリ起動
  runApp(scopedApp);
}