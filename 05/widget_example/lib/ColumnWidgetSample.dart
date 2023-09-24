import 'package:flutter/material.dart';

class ColumnWidgetSample extends StatelessWidget {
  const ColumnWidgetSample({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.red,
                ),
                // SizedBox는 정해진 레이아웃 사이에 공백을
                // 생성할 때 사용
                const SizedBox(width: 12.0),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.green,
                ),
                const SizedBox(width: 12.0),
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.blue,
                ),
              ],
            )),
      ),
    );
  }
}
