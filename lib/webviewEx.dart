// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// void main(){
//   runApp(MaterialApp(home:WEbviewEX(),));
// }
// class WEbviewEX extends StatefulWidget {
//   const WEbviewEX({super.key});

//   @override
//   State<WEbviewEX> createState() => _WEbviewEXState();
// }

// class _WEbviewEXState extends State<WEbviewEX> {
//   late WebViewController controller;
//   @override
//   void initState() {
//    controller = WebViewController()
//    ..setJavaScriptMode(JavaScriptMode.unrestricted)
//    ..loadRequest(Uri.parse("http://www.riveka.in/"))
//    ;
//     super.initState();
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Webview'),
//       ),
//       body: WebViewWidget(controller:controller ),
//     );
//   }
// }