import 'package:flutter/material.dart';

import 'package:flutter_project1/storages%20in%20flutter/simple%20login%20using%20shared%20preferemce/shared_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: LOginShared(),));
}
class LOginShared extends StatefulWidget {
  const LOginShared({super.key});

  @override
  State<LOginShared> createState() => _LOginSharedState();
}

class _LOginSharedState extends State<LOginShared> {
  final email = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;
  //  late bool newuser;
  @override
//   void initState() {
// checkIfuserAlreadyLOgin();
//     super.initState();
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email"
              ),
              controller: email,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password"
              ),
              controller: pwd,
            ),
            ElevatedButton(onPressed: ()async{
              preferences = await SharedPreferences.getInstance();
              String username = email.text;
              String password = pwd.text;
              if(username != "" && password != ""){
                preferences.setString('uname', username);
                 preferences.setString('pword', password);
                 //set as user already logged in
                //  preferences.setBool("userLogin", true);
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SharedHome()));
              }
                 email.text ="";
              pwd.text ="";

            }, child: const Text("Login")),
            
          ],
        ),
      ),
    );
  }
  
  // void checkIfuserAlreadyLOgin()async {
  //   preferences = await SharedPreferences.getInstance();
  //   //??-if the condition is null fetch the second value
  //   //check whether the user is already login,if getBool('userlogion)is null
  //   // is means user is new
  //   newuser = preferences.getBool("userLogin") ?? true;
  //   if(newuser == false){
  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>SharedHome()));
  //   }
    
  // }
}