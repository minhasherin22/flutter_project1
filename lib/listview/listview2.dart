import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview2(),
  ));
}

class Listview2 extends StatelessWidget {
  var name = [
    "Burger",
    "pizza",
    "sandwich",
    "juice",
    "coffee",
  ];
  var image = [
    "assets/burger.jpeg",
    "assets/pizza.jpeg",
    "assets/sandwich.jpeg",
    "assets/shake.jpeg",
    "assets/coffee.jpeg",
  ];
  var price = [
    123,
    333,
    555,
    766,
    123,
  ];
  Listview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("ListView2"),
          actions: [
            const Icon(Icons.camera_alt),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("Settings")),
                const PopupMenuItem(child: Text("Profile")),
                const PopupMenuItem(child: Text("Broadcast")),
                const PopupMenuItem(child: Text("Help"))
              ];
            })
          ],
        ),
        body: ListView(
          children: List.generate(
              5,
              (index) => Card(
                    child: ListTile(
                        title: Text(name[index]),
                        subtitle: Text("\$${price[index]}"),
                        trailing: Wrap(
                          direction: Axis.vertical,
                          children:const [
                            Text("12.30"),
                            SizedBox(
                              height: 20,
                            ),
                            CircleAvatar(
                              minRadius: 5,
                              maxRadius: 10,
                              child: Text("2"),
                            )
                          ],
                        ),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(image[index]),
                        )),
                  )),
        ));
  }
}
