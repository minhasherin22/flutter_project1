import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';
void main(){
  runApp(MaterialApp(home: RiveEx(),));
}
class RiveEx extends StatelessWidget {
  const RiveEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: RiveAnimation.asset("assets/riveanim.riv"),
      ),
    );
  }
}