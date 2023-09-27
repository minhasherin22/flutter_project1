import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: GridviewWithBuilder(),
  ));
}

class GridviewWithBuilder extends StatelessWidget {
  const GridviewWithBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview With Builder"),
      ),
      body: GridView.builder(
        itemCount: 21,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: 
          (context, index) {
            return Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("COOL!!!!!"), Icon(Icons.ac_unit_outlined)],
                ),
              ),
            );
          }),
    );
  }
}
