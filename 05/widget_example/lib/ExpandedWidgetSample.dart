import 'package:flutter/material.dart';

class ExpandedWidgetSample extends StatelessWidget {
  const ExpandedWidgetSample({super.key});

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
                    flex: 3,
                    // fit: FlexFit.tight,
                    // fit: FlexFit.loose,
                    child: Container(
                  color: Colors.red,
                )),
                Expanded(
                  child: Container(
                    color: Colors.blue
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.green
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
