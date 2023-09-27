import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project1/widget%20refactoring/widgets.dart';
void main(){
  runApp(MaterialApp(home: RefraHome(),));
}
class RefraHome extends StatelessWidget {
  const RefraHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView using refactoring"),
      ),
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (context,index){
        return MyWidget(mimage: AssetImage("assets/loaded.jpeg"),name: "loaded fries",price: 20,);
       }),
    );
  }
}

