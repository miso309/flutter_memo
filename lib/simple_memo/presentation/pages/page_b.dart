import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'シンプルなページ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('シンプルなページ'),
        ),
        body: Center(
          child: Text(
            'こんにちは、Flutter!',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}