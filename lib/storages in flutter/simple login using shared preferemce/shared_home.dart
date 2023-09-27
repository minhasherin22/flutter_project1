import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project1/storages%20in%20flutter/simple%20login%20using%20shared%20preferemce/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  const SharedHome({super.key});

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  late SharedPreferences preferences;
  late String username;
  late String password;
 
  @override
  ///page load aakumbo thanne datas kanenm so njammal initstate use aakunn
  void initState() {
    fetchData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME $username"),
            // Text(password),
            // ElevatedButton(onPressed: (){
            //   preferences.setBool('newuser', true);
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LOginShared()));
            // }, child: Text("Logout"))
          ],
        ),
      ),
    );
  }
  
  void fetchData()async {
    preferences  = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('uname')!;
      password = preferences.getString('pword')!;
    });
  }
}