import 'package:flutter/material.dart';

import 'package:flutter_project1/storages%20in%20flutter/simple%20login%20using%20shared%20preferemce/shared_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LOgin2 extends StatefulWidget {
  const LOgin2({super.key});

  @override
  State<LOgin2> createState() => _LOgin2State();
}

class _LOgin2State extends State<LOgin2> {
  final logname = TextEditingController();
  final logpass = TextEditingController();
  late SharedPreferences preferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email"),
              controller: logname,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
              controller: logpass,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  preferences = await SharedPreferences.getInstance();
                  String usename = logname.text;
                  String pword = logpass.text;
                  String storedusename = preferences.getString('uname')!;
                  String storedpass = preferences.getString('pword')!;
                  if (storedusename == usename && storedpass == pword) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SharedHome()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Try again!!!!!!")));
                  }
                },
                child: const Text("LOGIN"))
          ],
        ),
      ),
    );
  }
}
