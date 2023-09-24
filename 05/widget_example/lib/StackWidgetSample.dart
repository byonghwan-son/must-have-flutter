import 'package:flutter/material.dart';

class StackWidgetSample extends StatelessWidget {
  const StackWidgetSample({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.red,
          ),
          Container(
            height: 250.0,
            width: 250.0,
            color: Colors.yellow,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
