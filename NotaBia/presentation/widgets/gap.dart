import 'package:flutter/material.dart';

/// Gap ウィジェット
///
/// レイアウトにスペースを追加するために使用します。
class Gap extends StatelessWidget {
  const Gap._({
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  /// 水平方向のスペースを追加
  factory Gap.w(double width) {
    return Gap._(width: width, height: 0);
  }

  /// 垂直方向のスペースを追加
  factory Gap.h(double height) {
    return Gap._(width: 0, height: height);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
