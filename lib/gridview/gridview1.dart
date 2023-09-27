import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  const GridView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView(

          ///in slivergriddelegatefixedcrossaxiscount there is fixed cross axis count can be given
          ///that means when we use big platform the same count is there no changes in count of grid
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2,
          // ),
          // children: List.generate(15,
          //     (index) => Center(child: Card(
          //       color:Colors.red,
          //       child: Icon(Icons.abc_outlined))))

////by usin slivergriddelegatewithmaxcrossaxisextend we can change no of things when we using big screen automatically
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 70),
          children: List.generate(10, (index) => Card(
            child: Icon(Icons.ac_unit_outlined),
          )),
                ),
    );
  }
}
