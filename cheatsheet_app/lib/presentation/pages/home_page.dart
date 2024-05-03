import 'package:flutter/material.dart';
import 'package:cheatsheet/presentation/pages/home_page_header.dart';
import 'package:cheatsheet/presentation/pages/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          HomePageHeader(
            onPressedEditButton: () {
              debugPrint('編集ボタンが押されました');
            },
          ),
          // Body
          const HomePageBody(),
        ],
      ),
    );
  }
}