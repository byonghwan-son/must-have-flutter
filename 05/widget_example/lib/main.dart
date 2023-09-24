import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            '주주파파',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Colors.blue
            ),
          ),
        ),
      ),
    );
  }
}
