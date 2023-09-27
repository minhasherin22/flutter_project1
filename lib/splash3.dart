import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project1/loginpage.dart';
import 'package:flutter_project1/loginpage2.dart';
void main(){
  runApp(MaterialApp(home: Splash3(),));
}
class Splash3 extends StatefulWidget {///spalsh 3  is initialy immutable that means cant make changes
  @override
  State<Splash3> createState() => Splash3State();///createstate create a mutable state
}

class Splash3State extends State<Splash3> {
  void initState() {
    ///what will happen when the app or page is first launched
    super.initState();
    Timer(
        Duration(seconds: 5),(){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage2()));
        }

       );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  Container(
        decoration: BoxDecoration(
           
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/backgroundimg.jpeg"),)
                ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/painting.png",
                width: 200,
                height: 200,
              ),
              Text(
                "My Application",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
