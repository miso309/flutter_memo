import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap._({
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  /// W
  factory Gap.w(double width) {
    return Gap._(width: width, height: 0);
  }

  /// H
  factory Gap.h(double height) {
    return Gap._(width: 0, height: height);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}