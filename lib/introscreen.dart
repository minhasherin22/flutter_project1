

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project1/loginpage2.dart';
import 'package:flutter_project1/splash3.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreen(),
  ));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(
            color: Colors.purple, fontSize: 32, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(color: Colors.red, fontSize: 25));
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: "First Page",
          body: "Welcome to our introduction page",
          image: IntroImage(
              "https://images.unsplash.com/photo-1638108820168-77c13bd437bd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDExfENEd3V3WEpBYkV3fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Second Page",
          body: "Look at this....",
          image: IntroImage(
              "https://images.unsplash.com/photo-1685914287307-d2155a6b898f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfENEd3V3WEpBYkV3fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Third Page",
          body: "Beginsss",
          image: IntroImage(
              "https://images.unsplash.com/photo-1688841903232-ec8fc94e9bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfENEd3V3WEpBYkV3fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
        ),
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Splash3())),
      done: Text("Done"),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginPage2())),
      skip: Text("skip"),
      showSkipButton: true,
      showDoneButton: true,
      next: Icon(Icons.arrow_circle_left),
      dotsDecorator: DotsDecorator(
          // size: Size(10,12),
          // color: Colors.grey,
          // activeSize:Size (20,22),
          // activeColor: Colors.yellow
          ),
    );
  }

  Widget IntroImage(String image) {
    return Center(
      child: Container(
       height: 700,
        decoration:
            BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image))),
      ),
    );
  }
}
