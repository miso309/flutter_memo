import 'package:flutter/material.dart';
import 'package:cheatsheet/domain/types/memo.dart';
import 'package:cheatsheet/presentation/pages/home_page_header.dart';
import 'package:cheatsheet/presentation/pages/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.memo,
  }) : super (key: key);

  final Memo memo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          HomePageHeader(memo: memo),
          // Body
          const HomePageBody(),
        ],
      ),
    );
  }
}