import 'package:flutter/cupertino.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';


class SwipeButton extends StatelessWidget {
  const SwipeButton({super.key});

  @override
  Widget build(BuildContext context) {

    //非表示メニュー
    final hiddenMenu = Container(
      width: Sizes.p70,
      color: BrandColor.grey,
      alignment: Alignment.center,
      child: const Icon(CupertinoIcons.eye_slash, color: BrandColor.white),
    );

    //フォルダメニュー
    final folderMenu = Container(
      width: Sizes.p70,
      color: BrandColor.grey,
      alignment: Alignment.center,
      child: const Icon(CupertinoIcons.folder, color: BrandColor.white,),
    );

    ///削除メニュー
    final deleteMenu = Container(
      width: Sizes.p70,
      color: BrandColor.grey,
      alignment: Alignment.center,
      child: const Icon(CupertinoIcons.delete, color: BrandColor.white,),
    );



    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: BrandColor.grey,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                hiddenMenu,
                folderMenu,
                deleteMenu,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
