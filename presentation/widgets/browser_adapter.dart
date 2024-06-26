import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';

/// ブラウザでもスマホと同じ比率で表示
class BrowserAdapter extends StatelessWidget {
  const BrowserAdapter({
    super.key,
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: AspectRatio(
            // テスト表示なので適当に
            aspectRatio: Sizes.p9 / Sizes.p16,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: BrandColor.black,
                  width: Sizes.p5,
                ),
              ),
              child: child ?? const Placeholder(),
            ),
          ),
        ),
      );
    }
    // Web以外のときは何もしない
    return child ?? const SizedBox.shrink();
  }
}