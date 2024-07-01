import 'package:flutter/material.dart';


class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empty App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Empty Page'),
        ),
        body: Center(
          child: Text('This is an empty page'),
        ),
      ),
    );
  }
}
