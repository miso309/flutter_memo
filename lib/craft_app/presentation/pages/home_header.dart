import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:memo_list/presentation/theme/colors.dart';
import 'package:memo_list/presentation/theme/fonts.dart';
import 'package:memo_list/presentation/theme/l10n.dart';
import 'package:memo_list/presentation/widgets/gap.dart';
import 'package:memo_list/presentation/theme/sizes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.onPressedPlusButton,
    required this.onPressedNotificationButton,
  });

  final void Function() onPressedPlusButton;
  final void Function() onPressedNotificationButton;

  @override
  Widget build(BuildContext context) {
    final plusButton = IconButton(
      onPressed: onPressedPlusButton,
      icon: Icon(
        CupertinoIcons.money_yen_circle,
        color: BrandColor.black,
      ),
    );

    final notificationButton = IconButton(
      onPressed: onPressedNotificationButton,
      icon: Icon(
        CupertinoIcons.bell_slash,
        color: BrandColor.black,
      ),
    );

    final userIcon = ClipOval(
      child: Icon(
        CupertinoIcons.person_circle_fill,
        size: Sizes.p40,
        color: BrandColor.darkGrey,
      ),
    );

    final homeTitle = Text(
      L10n.home,
      textAlign: TextAlign.left,
      style: BrandText.xlBold,
    );


    final quickBox = Container(
      width: Sizes.p600,
      height: Sizes.p40,
      decoration: BoxDecoration(
        color: BrandColor.lightGrey,
        borderRadius: BorderRadius.circular(Sizes.p30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: L10n.quick,
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: BrandColor.darkGrey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.p30),
            borderSide: BorderSide.none,
          ),
          fillColor: BrandColor.lightGrey,
          filled: true,
          contentPadding: EdgeInsets.only(left: Sizes.p20),
        ),
      ),
    );


    return Container(
      padding: EdgeInsets.all(Sizes.p20),
      color: BrandColor.white,
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              plusButton,
              notificationButton,
            ],
          ),
          SizedBox(
            height: Sizes.p80,
            child: Row(
              children: [
                userIcon,
                Gap.w(Sizes.p10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: homeTitle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap.h(Sizes.p20),
          SizedBox(
            child: Column(
              children: [
                quickBox,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
