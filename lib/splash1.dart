import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  ///to excute the program main is madatory
  ///runapp attatch widget tree to the UI.
  runApp(MaterialApp(
    ///default theme for our app
    home: MySplashscreen(),///initial page
  ));
}

class MySplashscreen extends StatelessWidget {
  ///this page doest support any state change becouse this is a stateless widget
  @override
  Widget build(BuildContext context) {
    ///build context is used to locate widget position in widget tree
    ///the entire screen indicates scaffold.
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
