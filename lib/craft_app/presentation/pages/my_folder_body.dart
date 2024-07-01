import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/theme/sizes.dart';
import 'package:memo_list/presentation/widgets/folder_section.dart';
import 'package:memo_list/presentation/widgets/gap.dart';
import 'package:memo_list/presentation/widgets/menu_section.dart';

class MyFolderBody extends StatelessWidget {
  const MyFolderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      color: BrandColor.white,
      child: Column(
        children: [
          MenuSection(),
          Gap.h(Sizes.p14),
          FolderSection(),
          Gap.h(Sizes.p14),
        ],
      ),
    );
  }
}