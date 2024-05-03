import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now()); // 現在の日付を取得してフォーマットします。

    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Center(child: Checkbox(value: false, onChanged: (bool? newValue) {})), // Aの真ん中にチェックボックス
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(child: Container()), // Bは透明
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextField(decoration: InputDecoration(border: OutlineInputBorder())), // Dの真ん中左側にテキストフィールド
                        ),
                      ),
                      Expanded(child: Container()), // Eは透明
                    ],
                  ),
                ),
                Expanded(
                  child: Center(child: Icon(Icons.star)), // Cの真ん中にアイコン
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(child: Text(formattedDate)), // Fの中に日付
          ),
        ],
      ),
    );
  }
}
