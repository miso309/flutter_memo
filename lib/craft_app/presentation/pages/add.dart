import 'package:flutter/material.dart';


class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('作成する'),
          backgroundColor: Colors.grey[900],
          elevation: 0,
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Card(
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  width: 300,
                  height: 200,
                  padding: EdgeInsets.all(20),
                  child: Center(child: Text('カード内容は具体的ではありません')),
                ),
              ),
              Positioned(
                top: 20,
                child: Card(
                  color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Container(
                    width: 260,
                    height: 160,
                    padding: EdgeInsets.all(20),
                    child: Center(child: Text('曖昧なテキスト')),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                child: Card(
                  color: Colors.grey[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Container(
                    width: 220,
                    height: 120,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('今日', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('2024/4/24'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // アクションをここに追加
          },
          child: Icon(Icons.check),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
  }
}
