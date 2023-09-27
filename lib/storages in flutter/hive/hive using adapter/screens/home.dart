import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HiveHome extends StatelessWidget {
  String? email;
  HiveHome({this.email});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome $email"),
      ),
    );
  }
}