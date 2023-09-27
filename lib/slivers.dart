import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: Slivers(),
  ));
}

class Slivers extends StatelessWidget {
  const Slivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            ///floating is used to scroling
            floating: false,

            ///if pinned is true then appbar doest scroll
            pinned: true,
            title: Text("Sliver Appbar"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search Here",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          // SliverList(delegate: SliverChildBuilderDelegate((context,index)=>
          // Container(
          //   height: 80,
          //   child: Text("item $index"),
          // )
          // ))
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Icon(Icons.home)),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
        ],
      )),
    );
  }
}
