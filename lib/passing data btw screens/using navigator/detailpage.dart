

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project1/passing%20data%20btw%20screens/using%20navigator/dummy%20data.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///to recieve value from previous page
    final productId = ModalRoute.of(context)?.settings.arguments;
    ///here checking recieved value from previous page and our dummy element nte each id for checking both are same
    ///if both are same then that value stored in productfromlist
    final productFromList = products.firstWhere((element) => element['id']==productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(productFromList['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(productFromList['image']))
              ),
            ),
            Text(productFromList['name']),
            Text(productFromList['price']),
            Text(productFromList['discription']),
            Text(productFromList['rating']),
          ]
        ),
      ),
     
    );
  }
}