

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: ClipperEx(),
  ));
}

class ClipperEx extends StatelessWidget {
  const ClipperEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper Widget"),
      ),
      body: ListView(
        children: [
          ///this widget is used for clipping rectangles
          ClipRect(
            child: Container(
                child: Align(
                    heightFactor: .4,
                    widthFactor: .6,
                    child: Image.network(
                        "https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"))),
          ),
          ///this widget is used to shape images like rounded
          ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  "https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")),
                  ///this used for shaping like oval
          ClipOval(
              child: Image.network(
                  "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")),
                  ///this widget is used for clipping our own style
                  ///we can get diff shape from pub dev
                  ///here we need to add dependency flutter custome clipper
                  ClipPath(
                    clipper: StarClipper(5),
                    child: Image.network("https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  ClipPath(
                    clipper: MultiplePointedEdgeClipper(),
                    child: Image.network("https://images.unsplash.com/photo-1691158429271-05e8dbc80daf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                  )
        ],
      ),
    );
  }
}
