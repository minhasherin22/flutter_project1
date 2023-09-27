import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: bottomSheets(),
  ));
}

class bottomSheets extends StatelessWidget {
  const bottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bottom sheet"),
      ),
      body: Center(
        child: GestureDetector(
            onLongPress: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const[
                          ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.green,
                            ),
                            title: Text("Whatsapp"),
                          ),
                          ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.orange,
                            ),
                            title: Text("Instagram"),
                          ),
                          ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                            title: Text("Facebook"),
                          )
                        ],
                      ),
                    );
                  });
            },
            child: const Image(
                image: AssetImage(
                    "assets/philip-oroni-KbusKKAZ968-unsplash.jpg"))),
      ),
    );
  }
}
