import 'package:flutter/material.dart';
import 'package:memo_list/presentation/pages/home_body.dart';
import 'package:memo_list/presentation/pages/home_header.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          HomeHeader(
            onPressedPlusButton: () {
              debugPrint('課金ボタンが押されました');
            },
            onPressedNotificationButton: () {
              debugPrint('通知ボタンが押されました');
            },
          ),
          // Body
          HomeBody(
            onPressedUserHistoryButton: () {
              debugPrint('履歴ボタンが押されました');
            },
            onPressedShareButton: () {
              debugPrint('私と共有ボタンが押されました');
            },
          ),
        ],
      ),
    );
  }
}
