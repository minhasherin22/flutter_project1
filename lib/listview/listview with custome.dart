

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: listview_with_custom(),
  ));
}

class listview_with_custom extends StatelessWidget {
  const listview_with_custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview with custome"),
      ),
      // body: ListView.custom(
      //     childrenDelegate:

      //         ///here children type is list so we can use [] or list.generate
      //         SliverChildListDelegate(List.generate(
      //             10,
      //             (index) => Card(
      //                   child: Text("hello"),
      //  
      ///here is another method is sliverchildbuilderdelegate is similar to listview.builder               )))),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index)=>Text("data"))),
    );
  }
}
