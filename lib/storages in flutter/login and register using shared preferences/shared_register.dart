import 'package:flutter/material.dart';
import 'package:flutter_project1/storages%20in%20flutter/login%20and%20register%20using%20shared%20preferences/loginpage2.dart';

import 'package:flutter_project1/storages%20in%20flutter/simple%20login%20using%20shared%20preferemce/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    home: RegisterShared(),
  ));
}

class RegisterShared extends StatefulWidget {
  const RegisterShared({super.key});

  @override
  State<RegisterShared> createState() => _RegisterSharedState();
}

class _RegisterSharedState extends State<RegisterShared> {
  final name = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  late SharedPreferences preferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Name"),
              controller: name,
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email"),
              controller: username,
            ),
             SizedBox(height: 10,),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
              controller: password,
            ),
             SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () async {
                  preferences = await SharedPreferences.getInstance();
                  String orgname = name.text;
                  String email = username.text;
                  String pwd = password.text;
                  if (email != "" && pwd != "" && orgname != "") {
                    preferences.setString('orginalname', orgname);
                    preferences.setString('uname', email);
                    preferences.setString('pword', pwd);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LOgin2()));
                  }
                  username.text = "";
                  name.text = '';
                  password.text = '';
                },
                child: const Text("REGISTER"))
          ],
        ),
      ),
    );
  }
}
