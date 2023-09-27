import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'package:flutter_project1/loginpage.dart';
import 'package:flutter_project1/storages%20in%20flutter/hive/hive%20using%20adapter/models/user_model.dart';
import 'package:get/route_manager.dart';

class RegisterHive extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive Registration"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: 'UserName', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'PassWord'),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                //fetch all the users from db
                final userlist = await HiveDb.instance.getUser();
                validateSignUp(context, userlist);
              },
              child: const Text("Login")),
        ],
      ),
    );
  }
  void validateSignUp(BuildContext context, List<User> userlist) async {
    final uname = email.text.trim();
    final pwd = pass.text.trim();
    bool userFound = false;
    //this is the dependency email validator for checking is email validate or not
    final validateEmail = EmailValidator.validate(uname);
    if(uname != "" && pwd != "") {
      if (validateEmail == true) {
        await Future.forEach(userlist, (singleUser) {
          if (singleUser.email == uname) {
            userFound = true;
          } else {
            userFound = false;
          }
        });
        if (userFound == true) {
          // ScaffoldMessenger.of(context)
          //     .showSnackBar(SnackBar(content: Text("User Already Exist!!")));
          Get.snackbar('FAILED', 'user already exist');
        } else {
          final validatePassword = validatePassWord(context, pwd);
          if (validatePassword == true) {
            final user = User(email: uname, password: pwd);
            await HiveDb.instance.addUser(user); // user added to hive db
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => LoginPage()));
            Get.offAll(LoginPage());
            // ScaffoldMessenger.of(context).showSnackBar(
            //     SnackBar(content: Text("User Registration Success")));
            Get.snackbar("SUCCESS", 'user registration success');
          }
        }
      } else {
        // ScaffoldMessenger.of(context)
        //     .showSnackBar(SnackBar(content: Text("Enter a Valid Email!!!")));
        Get.snackbar('FAILED', 'enter a valid email');
      }
    }else{
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text("Field Must Not be Empty!!!")));
      Get.snackbar('Failed', 'fiels must not be empty');
    }
  }

  bool validatePassWord(BuildContext context, String pwd) {
    if (pwd.length < 6) {
      // ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text("Password length should be > 6 !!")));
      Get.snackbar('Failed', 'pass must be greater than 6');
      return false;
    } else {
      return true;
    }
  }
}
