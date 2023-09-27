import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
void main(){
  runApp(MaterialApp(home: GridViewWithExtend(),));
}
class GridViewWithExtend extends StatelessWidget {
  const GridViewWithExtend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview With Extend"),),
      body: GridView.extent(maxCrossAxisExtent: 70,
      children: List.generate(10, (index) => Card(
        child: Center(
          child: Icon(Icons.ac_unit),
        ),
      )),
      ),
    );
  }
}