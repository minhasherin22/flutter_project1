import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "Select Your Food From The Menu!!",
            style: GoogleFonts.dancingScript(
                fontSize: 30,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold),
          )),
        const  Padding(
            padding: const EdgeInsets.only(top: 20),
            child:  Card(
              child: ListTile(
                title: Text("Burger"),
                subtitle: Text("\$100"),
                trailing: Icon(Icons.shopping_cart),
                leading: CircleAvatar(backgroundImage: AssetImage("assets/burger.jpeg")),
              ),
            ),
          ),
        const  Padding(
            padding:  EdgeInsets.only(top: 20),
            child: Card(
              child: ListTile(
                title: Text("Pizza"),
                subtitle: Text("\$340"),
                trailing: Icon(Icons.shopping_cart),
                leading: CircleAvatar(backgroundImage: AssetImage("assets/pizza.jpeg")),
              ),
            ),
          ),
        const  Padding(
            padding:  EdgeInsets.only(top: 20),
            child: Card(
              child: ListTile(
                title: Text("Club Sandwich"),
                subtitle: Text("\$120"),
                trailing: Icon(Icons.shopping_cart),
                leading: CircleAvatar(backgroundImage:AssetImage("assets/sandwich.jpeg")),
              ),
            ),
          ),
        const  Padding(
            padding:  EdgeInsets.only(top: 20),
            child: Card(
              child: ListTile(
                title: Text("Coffee"),
                subtitle: Text("\$60"),
                trailing: Icon(Icons.shopping_cart),
                leading: CircleAvatar(backgroundImage: AssetImage("assets/coffee.jpeg")),
              ),
            ),
          ),
        const  Padding(
            padding:  EdgeInsets.only(top: 20),
            child: Card(
              child: ListTile(
                title: Text("Shakes"),
                subtitle: Text("\$100"),
                trailing: Icon(Icons.shopping_cart),
                leading: CircleAvatar(backgroundImage:AssetImage("assets/shake.jpeg")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
