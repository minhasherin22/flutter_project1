import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project1/api%20integration/api%20integration_using_http/model/productmodel.dart';

class ProductTile extends StatelessWidget {
  final Productmodel product;
   ProductTile(this.product);
  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: CachedNetworkImage(
              imageUrl: product.image!,
              fit: BoxFit.cover,),
          ),
          SizedBox(height: 15,),
          Text('${product.title!}',style:TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ) ,)
        ],
      ),
    );
  }
}