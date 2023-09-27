

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project1/loginpage.dart';
import 'package:flutter_project1/loginpage2.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homepage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   var formKey = GlobalKey<FormState>();
   bool showpass1 = true;
   bool showpass2 = true;
   String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Form(
        key: formKey,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Name",
              labelText: "Name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Phone number",
              labelText: "Phone Number"
              ),
               validator: (password){
                  if(password!.isEmpty  || password.length<10){
                    return "enter a valid password";
                  }else{
                    return null;
                  }
                },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "UserName",
              labelText: "UserName"
              ),
               validator: (uname){
                if(uname!.isEmpty || !uname.contains("@")){
                    return "fields are empty or invalid";
                }else{
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              obscureText: showpass1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Password",
              labelText: "Password",
              prefixIcon: IconButton(onPressed: (){
                setState(() {
                  if(showpass1 == true){
                    showpass1 = false;
                  }else{
                    showpass1 = true;
                  }
                });
              },
               icon: Icon(showpass1 == true ? Icons.visibility_off : Icons.visibility))
              ),
               validator: (password){
                pass = password;
                  if(password!.isEmpty  || password.length<6){
                    return "enter a valid password";
                  }else{
                    return null;
                  }
                },
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              obscureText: showpass2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Confirm Password",
              labelText: "Confirm Password",
              prefixIcon: IconButton(onPressed: (){
                setState(() {
                  if(showpass1 == true){
                    showpass1 = false;
                  }else{
                    showpass1 = true;
                  }
                });
              },
               icon: Icon(showpass1 == true ? Icons.visibility_off : Icons.visibility))
              ),
               validator: (copassword){
                  if(copassword!.isEmpty  || copassword != pass){
                    return "enter a valid password";
                  }else{
                    return null;
                  }
                },
            ),
          ),
          ElevatedButton(onPressed: () {
            final valid = formKey.currentState!.validate();
            if(valid){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage2()));
            }else{
              Fluttertoast.showToast(
        msg: "invalid username or password",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.black,
        fontSize: 16.0
    );
            }
          }, child: Text("Register"))
        ],
      )),
    );
  }
}
