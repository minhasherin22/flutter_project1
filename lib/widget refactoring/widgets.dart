import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  ImageProvider mimage;
  String name;
  int? price;
   MyWidget({
    Key? key,
    required this.mimage,
    required this.name,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Container(
          height: 100,
          width: 100,
          child: Image(image: mimage)),
          Text(name),
          Text("${price}"),
          Row(
            children: [
              ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.shopping_bag), label: Text("wishlist")),
              SizedBox(width: 10,),
              ElevatedButton(onPressed: (){}, child: Text("buy noww")),
            ],
          )
        ],
      ),
    );
  }
}