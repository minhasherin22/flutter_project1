

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
void main(){
  runApp(MaterialApp(home: SimpleAnim(),));
}
class SimpleAnim extends StatefulWidget {
  const SimpleAnim({super.key});

  @override
  State<SimpleAnim> createState() => _SimpleAnimState();
}

class _SimpleAnimState extends State<SimpleAnim> with SingleTickerProviderStateMixin{
  Animation<double>? animation;
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 12.0,end: 100.0).animate(animationController!)..addListener(() {
      setState(() {
        
      });
      
    });
     
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Simple Animation")),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text("HELLO ALL",
            style: TextStyle(fontSize: animation?.value),
            ),
          ),
          ElevatedButton(onPressed: ()=>zoomin(), child: Text("Zoom...")),
         
        ],
      ),
    );
  }
  
void  zoomin() {
  animationController?.forward();
}


}