import 'package:flutter/material.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/theme/sizes.dart';

class BrandText {

  // XXLサイズ 太字
  static const xxlBold = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p28,
    fontWeight: FontWeight.bold,
  );

  // XLサイズ 太字
  static const xlBold = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p18,
    fontWeight: FontWeight.bold,
  );

  // Lサイズ 太字
  static const lBold = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p16,
    fontWeight: FontWeight.bold,
  );

  // Mサイズ
  static const m = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p14,
  );

  // Mサイズ 太字
  static const mBold = TextStyle(
    color: BrandColor.black,
    fontSize: Sizes.p14,
    fontWeight: FontWeight.bold,
  );

  // Mサイズ グレー
  static final mGrey = TextStyle(
    color: BrandColor.darkGrey,
    fontSize: Sizes.p14,
  );

  // Sサイズ
  static const s = TextStyle(
    color: BrandColor.darkGrey,
    fontSize: Sizes.p12,
  );

  // Sサイズ グレー
  static final sGrey = TextStyle(
    color: BrandColor.darkGrey,
    fontSize: Sizes.p12,
  );

  // XSサイズ 緑
  static const xsGreen = TextStyle(
    color: BrandColor.safeGreen,
    fontSize: Sizes.p10,
  );
}