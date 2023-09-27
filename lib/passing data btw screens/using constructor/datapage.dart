

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project1/passing%20data%20btw%20screens/using%20constructor/to_statfl_page.dart';
import 'package:flutter_project1/passing%20data%20btw%20screens/using%20constructor/to_statlss_page.dart';

void main() {
  runApp(MaterialApp(
    home: DataPage(),
  ));
}

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data passing btw 2 screens using constructor"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  ///here we calling constructor of statelesspage
                  ///so we also pass the value we needed
                  ///in that page constructor have optional named parameter
                  ///so we passing optional named parameter
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatelessPage(
                          name: "minha",
                          location: "kannur",
                          phoneno: 987654321)));
                },
                child: Text("to stateless page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatefullPage(
                          name: "hiba",
                          location: "kanuur",
                          phoneno: 988987766)));
                },
                child: Text("to statefull page"))
          ],
        ),
      ),
    );
  }
}
