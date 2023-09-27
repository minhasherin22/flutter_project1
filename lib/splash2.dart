import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///1st way of colorig background
      // backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            // gradient: LinearGradient(
             
            //  /// 2nd way to setting color at background using gradient.
            //     colors: [Colors.red, Colors.white, Colors.pink],)

            ///this is the way for setting image on background.
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
