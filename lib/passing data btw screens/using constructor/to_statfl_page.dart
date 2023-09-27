import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatefullPage extends StatefulWidget {
 final String name;
 final String location;
  int? phoneno;
  StatefullPage(
      {super.key, required this.name, required this.location, this.phoneno});

  @override
  State<StatefullPage> createState() => _StatefullPageState();
}

class _StatefullPageState extends State<StatefullPage> {
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
               Text(widget.name),
               Text(widget.location),
               Text('${widget.phoneno}')
          ],
        ),
      ),
    );
  }
}
///in ststfl widget variable are in first class
///so we cant use in our code 
///that why we using widget for accessing varible from first class to second one
