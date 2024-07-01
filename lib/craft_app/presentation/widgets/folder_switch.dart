import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memo_list/presentation/theme/colors.dart';

final isOnProvider = StateProvider((ref) {
  return true;
});

class FolderSwitch extends ConsumerWidget {
  const FolderSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // トグルスイッチ
    final isOn = ref.watch(isOnProvider);
    final toggleSwitch = Switch(
      value: isOn,
      onChanged: (isOn) {
        ref.read(isOnProvider.notifier).state = isOn;
      },
      // 色を変える
      activeColor: BrandColor.blue,
      activeTrackColor: BrandColor.green,
      inactiveThumbColor: BrandColor.black,
      inactiveTrackColor: BrandColor.grey,
    );


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            toggleSwitch,
          ],
        ),
      ),
    );
  }
}