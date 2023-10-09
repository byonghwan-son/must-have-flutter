import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;

  // const HomeScreen({super.key});
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            if(controller != null) {
              controller!.loadUrl('https://codeless.tistory.com/');
            }
          }, icon: const Icon(Icons.home))
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: 'https://codeless.tistory.com/',
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }

}