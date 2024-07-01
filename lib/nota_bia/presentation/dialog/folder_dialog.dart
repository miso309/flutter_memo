import 'package:flutter/material.dart';

class FolderDialog extends StatelessWidget {
  final double width;
  final double height;

  const FolderDialog({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // ダイアログを閉じる
                  },
                  child: const Text('キャンセル', style: TextStyle(color: Colors.red)),
                ),
                const Text(
                  '新しいフォルダ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(controller.text); // フォルダ名を返してダイアログを閉じる
                  },
                  child: const Text('完了', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'フォルダ名を入力',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
