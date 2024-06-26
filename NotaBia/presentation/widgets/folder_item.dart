import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cheatsheet/presentation/theme/l10n.dart';
import 'package:cheatsheet/presentation/theme/sizes.dart';
import 'package:cheatsheet/presentation/theme/colors.dart';
import 'package:cheatsheet/presentation/theme/fonts.dart';
import 'package:flutter/widgets.dart';

class FolderSection extends StatelessWidget {
  const FolderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(Sizes.p20)),
      child: Container(
        color: BrandColor.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(Sizes.p18),
                child: Text(
                  L10n.folder,
                  style: BrandText.xlBold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(Sizes.p18),
              child: Icon(
                CupertinoIcons.chevron_down,
                color: BrandColor.wainRed,
              ),
            ),

            SizedBox(
              child: Container(
                child: ListTile(
                  leading: Icon(CupertinoIcons.folder_badge_plus,
                    color: BrandColor.wainRed,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
