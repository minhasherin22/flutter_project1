import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {
  String username = "minha";
  String psw = "abc1234";
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  LoginPage({super.key});

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
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: usercontroller,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.people),
                    border: OutlineInputBorder(),
                    hintText: "UserName",
                    helperText: "user name must be an email",
                    labelText: "UserName"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: passcontroller,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    helperText: "password must be 6 charecter",
                    labelText: "password"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (username == usercontroller.text &&
                      psw == passcontroller.text) {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("invalid username or password"),backgroundColor: Colors.red,));
    //                 Fluttertoast.showToast(
    //     msg: "invalid username or password",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.TOP,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.black,
    //     fontSize: 16.0
    // );
                  }
                },
                child: Text("login"))
          ],
        ),
      ),
    );
  }
}
