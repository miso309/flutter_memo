import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nota_bia/presentation/theme/l10n.dart';
import 'package:nota_bia/presentation/theme/fonts.dart';
import 'package:nota_bia/presentation/theme/colors.dart';
import 'package:nota_bia/presentation/theme/sizes.dart';
import 'package:nota_bia/presentation/widgets/gap.dart';

class MemoBottomSheet extends StatelessWidget {
  const MemoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(Sizes.p16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.p16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(L10n.memo, style: BrandText.lBold),
              IconButton(
                icon: const Icon(CupertinoIcons.clear_circled),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: Sizes.p10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: Text(L10n.date, style: BrandText.m),
              ),
              Gap.h(Sizes.p5),
              ListTile(
                title: Text(L10n.repeat, style: BrandText.m),
              ),
              Gap.h(Sizes.p5),
              ListTile(
                title: Text(L10n.notification, style: BrandText.m),
              ),
              Gap.h(Sizes.p5),
              ListTile(
                title: Text(L10n.deadline, style: BrandText.m),
              ),
              Gap.h(Sizes.p5),
            ],
          ),
          const SizedBox(height: Sizes.p10),
          TextField(
            decoration: InputDecoration(
              hintText: L10n.task,
              suffixIcon: Icon(CupertinoIcons.arrow_up_circle_fill, color: BrandColor.enabledBlue, size: Sizes.p40),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.p30),
                borderSide: BorderSide.none,
              ),
              fillColor: BrandColor.lightGrey,
              filled: true,
              contentPadding: EdgeInsets.only(left: Sizes.p20),
            ),
          ),
        ],
      ),
    );
  }
}
