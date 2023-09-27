

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatelessPage extends StatelessWidget {
  ///here we get passed value from data page
  ///function needed this keyword and initialize that variable aslo bcz we need to make that variable instance variable for using anywhere
  ///we can also make optional parameter by removing required keyword
  final String name;
  final String location;
  int? phoneno;
   StatelessPage({super.key,required this.name, required this.location, this.phoneno});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("statless page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               Text(name),
               Text(location),
               Text('${phoneno}')
          ],
        ),
      ),
    );
  }
}