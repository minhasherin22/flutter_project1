import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listview_with_seperator(),
  ));
}

class listview_with_seperator extends StatelessWidget {
  var months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  listview_with_seperator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview With Seperator"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Align(
                    alignment: Alignment.center, child: Text(months[index])),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return const Card(
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Align(
                    child: Text(
                      "Advertisement",
                    ),
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}
