import 'package:flutter/material.dart';

class FlexibleWidgetSample extends StatelessWidget {
  const FlexibleWidgetSample({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Flexible(
                    flex: 7,
                    child: Container(
                      color: Colors.blue,
                    )),
                Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.red,
                    ))
              ],
            )),
      ),
    );
  }
}
