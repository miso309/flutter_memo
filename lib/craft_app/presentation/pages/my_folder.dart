import 'package:flutter/material.dart';
import 'package:memo_list/presentation/pages/my_folder_header.dart';
import 'package:memo_list/presentation/pages/my_folder_body.dart';
import 'package:memo_list/presentation/widgets/folder_bottom_sheet.dart';

class MyFolder extends StatelessWidget {
  const MyFolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          MyFolderHeader(
            onPressedSettingButton: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const FolderBottomSheet();
                },
              );
            },
          ),
          // Body
          MyFolderBody(),
        ],
      ),
    );
  }
}