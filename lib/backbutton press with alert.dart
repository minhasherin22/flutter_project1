import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
void main(){
  runApp(MaterialApp(home: ExitAppAlert(),));
}
class ExitAppAlert extends StatelessWidget {
  const ExitAppAlert({super.key});

  @override
  Widget build(BuildContext context) {
     Future<bool> showAlert()async {
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("exit"),
          content: Text("do you really want to exit"),
          actions: [
            ElevatedButton(onPressed: (){
              ///if we given true then our app go to home page
                 Navigator.of(context).pop(true);
            }, child: Text("yes")),
             ElevatedButton(onPressed: (){
              ///if we given false then when we click it go to same page
                 Navigator.of(context).pop(false);
            }, child: Text("no")),
             ElevatedButton(onPressed: (){
                 Navigator.of(context).pop(true);
            }, child: Text("cancel"))
          ],
        );
      });
  }
    return WillPopScope(
      onWillPop:showAlert,
     child:Scaffold(
      appBar: AppBar(
        title: Text("bottomsheet"),),
        body: Center(
          child: Text("hoowww"),
        ),
        )
     
      ,
     
    );
  }

 
}