import 'package:flutter/material.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';

/// フォント
class BrandFont {
  static const general = 'NotoSansJP';
}

/// 文字スタイル
class BrandText {
  static const xlBold = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p35,
    fontFamily: BrandFont.general,
    fontWeight: FontWeight.bold,
  );
  static const lBold = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p20,
    fontFamily: BrandFont.general,
    fontWeight: FontWeight.w500,
  );
  static const lBlue = TextStyle(
    color: BrandColor.enabledBlue,
    fontSize: Sizes.p20,
    fontWeight: FontWeight.normal,
    fontFamily: BrandFont.general,
  );
  static const lGrey = TextStyle(
    color: BrandColor.darkGrey,
    fontSize: Sizes.p20,
    fontWeight: FontWeight.normal,
    fontFamily: BrandFont.general,
  );
  static const m = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p18,
    fontWeight: FontWeight.normal,
    fontFamily: BrandFont.general,
  );
  static const mBold = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p18,
    fontWeight: FontWeight.bold,
    fontFamily: BrandFont.general,
  );
  static const mBlue = TextStyle(
    color: BrandColor.enabledBlue,
    fontSize: Sizes.p18,
    fontFamily: BrandFont.general,
  );
  static const xs = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p16,
    fontWeight: FontWeight.bold,
    fontFamily: BrandFont.general,
  );
  static const s = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p14,
    fontWeight: FontWeight.normal,
    fontFamily: BrandFont.general,
  );
}