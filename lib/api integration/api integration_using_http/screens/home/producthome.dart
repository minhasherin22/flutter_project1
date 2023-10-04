import 'package:flutter/material.dart';

import 'package:flutter_project1/api%20integration/api%20integration_using_http/controller/productcontroller.dart';
import 'package:flutter_project1/api%20integration/api%20integration_using_http/screens/home/widget/producttile.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
void main(){
  runApp(GetMaterialApp(home: ProductHome(),));
}
class ProductHome extends StatelessWidget {
  //product controller enna classin object ctreate cheyyunnu
  //ennit get.put use chythitt product controller le changes edkkunnu
  final ProductController productController = Get.put(ProductController());
   ProductHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: SizedBox(
        //observing widgets
        child: Obx((){
          if(productController.isLoading.value){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return GridView.builder(
              itemCount: productController.productList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
               itemBuilder:(context,index){
                  return ProductTile(productController.productList[index]);
               }
               );
          }
        }),
      ),
    );
  }
  
  
}