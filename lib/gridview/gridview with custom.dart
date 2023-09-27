import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridviewWithCustom extends StatelessWidget {
  const GridviewWithCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(title: Text("Gridview with custome"),),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       childrenDelegate: SliverChildListDelegate(
        List.generate(10, (index) => Card(child: Text("heyy",style: TextStyle(color: Colors.black),)))
       )),
    );
    
  }
}