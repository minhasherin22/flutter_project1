import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    home: csslider(),
  ));
}

class csslider extends StatelessWidget {
  const csslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(items: [
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png")
        ], options: CarouselOptions(
          initialPage: 0,
          height: 200,
          // aspectRatio: 16/9,
          viewportFraction: .7,
          enableInfiniteScroll: true,
          autoPlayInterval: Duration(seconds: 2),
          
        )),
      ),
    );
  }
}
