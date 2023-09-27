import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Refactoring3Ex(),
  ));
}

class Refactoring3Ex extends StatelessWidget {
  const Refactoring3Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Refactoring3"),
        ),
        body: GridView.builder(
            itemCount: 6,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return MyRefactoringWidget(
                bgclr: Colors.amber,
                rimage: Image(image: AssetImage("assets/donut.jpeg")),
                label: Text("donut",style: GoogleFonts.dancingScript(fontSize: 25,fontWeight: FontWeight.bold),),
                ricon: Icon(Icons.menu),
              );
            }));
  }
}

class MyRefactoringWidget extends StatelessWidget {
  final Color? bgclr;
  final Image? rimage;
  VoidCallback? onClick;
  Widget? label;
  Widget? ricon;
  MyRefactoringWidget({
    this.bgclr,
    required this.rimage,
    this.onClick,
    this.label,
    this.ricon,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgclr,
      child: Align(
        child: ListTile(
          title: label,
          leading: rimage,
          onTap: onClick,
          trailing: ricon,
        ),
      ),
    );
  }
}
