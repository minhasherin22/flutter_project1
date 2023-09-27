

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewWithCount(),
  ));
}

class GridViewWithCount extends StatelessWidget {
  const GridViewWithCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView With Count"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        children: List.generate(10, (index) => Card(
          child: Center(
            child: Text("heyy",style: TextStyle(color: Colors.black),),
          ),
        ))
      ),
    );
  }
}
