import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: GridAssignment(),
  ));
}

class GridAssignment extends StatelessWidget {
  var icons = [
    Icon(Icons.home),
    Icon(Icons.alarm),
    Icon(Icons.camera),
    Icon(Icons.abc_outlined),
    Icon(Icons.call),
    Icon(Icons.mail),
    Icon(Icons.file_copy),
    Icon(Icons.abc_rounded),
    Icon(Icons.access_alarm_sharp),
    Icon(Icons.account_box_sharp),
    Icon(Icons.add_rounded),
    Icon(Icons.all_inclusive_sharp),

    ];
    var colors = [
      Colors.red,
      Colors.orange,
      Colors.black45,
      Colors.white54,
      Colors.amber,
      Colors.green,
      Colors.yellowAccent,
      Colors.purple,
      Colors.pink,
      Colors.blue,
      Colors.grey,
      Colors.purpleAccent,

    ];
  GridAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.builder(
        itemCount: 12,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Container(
              height: 10,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colors[index],
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   icons[index],
                   Text("Heart Shaker",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              )
            );
          }),
    );
  }
}
