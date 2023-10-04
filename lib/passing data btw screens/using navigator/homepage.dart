





import 'package:flutter/material.dart';
import 'package:flutter_project1/passing%20data%20btw%20screens/using%20navigator/detailpage.dart';
import 'package:flutter_project1/passing%20data%20btw%20screens/using%20navigator/dummy%20data.dart';
void main(){
  runApp(
    MaterialApp(
      home: ProductHome(),
      routes: {
        "details":(context)=>DetailPage(index: 0,)
      },
  ),
  
  );
}
class ProductHome extends StatelessWidget {
  const ProductHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Shop Now"),
       ),
       body: ListView(
        children: 
          products.map((productonebyone) =>Card(
            child: ListTile(
              onTap: (){
                gotoNxtPage(context,productonebyone['id']);
              },
              leading: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(productonebyone['image']))
                ),
                ),
              title: Text(productonebyone['name']),
              subtitle: Text('${productonebyone['price']}'),
            ),
          ) ).toList()
        ),
    );
  }
  
  void gotoNxtPage(BuildContext context, productId) {
     Navigator.pushNamed(context, 'details',arguments: productId);
  }
}