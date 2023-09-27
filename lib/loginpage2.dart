import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project1/homepage.dart';
import 'package:flutter_project1/registerpage.dart';
import 'package:fluttertoast/fluttertoast.dart';
///stateful loginpage with validator
class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  ///this form state is used for checking eacj and every field is validate or not
  var formKey = GlobalKey<FormState>();
  bool passVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loginpage with validator"),),
      body: Form(
        key: formKey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
               
                hintText: 'userName',
                labelText: "userName"
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
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
               obscureText: passVisibility,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  prefixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(passVisibility == true){
                        passVisibility = false;
                      }else{
                        passVisibility = true;
                      }
                    });
                  },
                   icon:Icon(passVisibility == true ? Icons.visibility_off : Icons.visibility)),
                  hintText: 'passWord',
                  labelText: "passWord",
                 
                ),
                validator: (password){
                  if(password!.isEmpty  || password.length<6){
                    return "enter a valid password";
                  }else{
                    return null;
                  }
                },
            ),
          ),
          ElevatedButton(onPressed: (){
            final valid = formKey.currentState!.validate();
            if(valid){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
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
          }, child: Text("login")),
          TextButton(onPressed: (){
             Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => RegisterPage()));
          }, child: Text("not a user???? register here!!!"))
        ],
      )),
    );
  }
}