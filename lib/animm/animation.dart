import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Anim(),));
}
class Anim extends StatelessWidget {
  const Anim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Lottie Animation"),),
      body:ListView(
        children: [
          Lottie.asset("assets/animation_ll3hv0nl.json"),
          Lottie.asset("assets/animation_ll3i80h0.json"),
          Lottie.network("https://lottie.host/354a87f1-d8bd-4099-8d4a-81cc89ec0e7c/8uG8b2TGT6.json")
        ],
      )
    );
  }
}