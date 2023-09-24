import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                top: true,
                bottom: true,
                left: true,
                right: true,
                child: Container(
                  color: Colors.red,
                  height: 40,
                  width: 300,
                )),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
                foregroundColor: Colors.red,
              ),
              child: const Text('텍스트 버튼'),
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                    foregroundColor: Colors.red),
                child: const Text('아웃라인드 버튼')),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                )),
                child: const Text('엘레베이티드 버튼')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            GestureDetector(
              onTap: () {
                print('On Tap');
              },
              onDoubleTap: () {
                print('On double Tap');
              },
              onLongPress: () {
                print('on Long press');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: 100.0,
                height: 100.0,
              ),
            ),
            SizedBox(
              height: 50.0,
              width: 200.0,
              child: Container(
                color: Colors.red,
              ),
            ),
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 16.0, color: Colors.black),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text('클릭'),
        ),
      ),
    );
  }
}
