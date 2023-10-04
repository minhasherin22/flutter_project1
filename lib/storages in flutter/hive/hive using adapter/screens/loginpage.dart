import 'package:flutter/material.dart';
import 'package:flutter_project1/storages%20in%20flutter/hive/hive%20using%20adapter/screens/home.dart';

import 'package:flutter_project1/storages%20in%20flutter/hive/hive%20using%20adapter/screens/registerpage.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/state_manager.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';


import '../models/user_model.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  //adding a dependecy get for reducing our code
  //here we using getmeterialapp instead of meterialapp
  runApp(GetMaterialApp(home: Login(),));

}
class Login extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HiveLogin"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: 'UserName',
              border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                  hintText: 'PassWord'),
            ),
          ),
          ElevatedButton(
              onPressed: () async{
                // final users = await HiveDb.instance.getUser();
                // checkUserExist(context,users);
              },
              child: const Text("Login")),
          TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>RegisterHive()));
              },
              child: const Text("Not a User? Register Here!!!"))
        ],
      ),
    );
  }
  Future<void> checkUserExist(BuildContext context,List<User> users) async{
    final lemail = email.text.trim();
    final lpass  = pass.text.trim();
    bool userFound = false;
    if(lemail != "" && lpass != ""){
      await Future.forEach(users, (singleUser) {
        if(lemail == singleUser.email && lpass == singleUser.password){
          userFound = true;
        }else{
          userFound = false;
        }
      });
      if(userFound == true){
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //     builder: (context)=>HiveHome(email:lemail)));
        Get.offAll(HiveHome(email: lemail,));
      }else{
        // ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(content: Text("Login Failed,User Not Found")));
        Get.snackbar('FAILED', 'user not found');
      }
    }else{
      // ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text("Field MustNot be Empty")));
      Get.snackbar('FAILED', 'must not be empty');
    }

  }
}