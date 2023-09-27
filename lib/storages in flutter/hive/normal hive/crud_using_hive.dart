

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

// void main() async {
//   //this 2 are maditory
//   ///hive initialize to this project
//   await Hive.initFlutter();
//   //opening hive box for todo
//   await Hive.openBox('to_do');
//   runApp(MaterialApp(
//     home: HiveEx(),
//   ));
// }

// class HiveEx extends StatefulWidget {
 
//   //  HiveEx({super.key});

//   @override
//   State<HiveEx> createState() => _HiveExState();
// }

// class _HiveExState extends State<HiveEx> {
//    final task_controller = TextEditingController();
//   final content_controller = TextEditingController();
//   //initializing an empty list
//   List<Map<String, dynamic>> task = [];
//   //creating obj for hive
//   final myBox = Hive.box('to-do');
//   @override
//   void initState() {
//     readTask();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("To- Do"),
//       ),
//       body: task.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: task.length,
//               itemBuilder: (c, index) {
//                 //fetch each map from list
//                 // final mytask = task[index];
//                 return Card(
//                   child: ListTile(
//                     title: Text(task[index]['taskname']),
//                     subtitle: Text(task[index]['taskcont']),
//                     trailing: Wrap(
//                       children: [
//                         IconButton(onPressed: () {
//                         deleteTask(task[index]['id']);
//                         }, icon: Icon(Icons.delete)),
//                         IconButton(onPressed: () {
//                           ShowTask(context, task[index]['id']);
//                         }, icon: Icon(Icons.edit))
//                       ],
//                     ),
//                   ),
//                 );
//               }),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () => ShowTask(context, null),
//         label: Text("NewTask"),
//         icon: Icon(Icons.add),
//       ),
//     );
//   }
// //itemkey is similar to id in sqflite
// //in hive we using key instead of id
//   void ShowTask(BuildContext context,int? itemkey) {
//     //for updating task
//     if(itemkey != null){
//       //firswhere is used to return first element who follow up the condition.
//       final existingTask = task.firstWhere((element) => element['id']==itemkey);
//       task_controller.text = existingTask['taskname'];
//       content_controller.text = existingTask['taskcont'];
//     }
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return Container(
//             padding: EdgeInsets.only(
//               top: 10,
//               left: 15,
//               right: 15,
//               bottom: MediaQuery.of(context).viewInsets.bottom+120
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                  TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: "Task Name"
//                   ),
//                   controller: task_controller,
//                  ),
//                  SizedBox(height: 10,),
//                  TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: "Task Content"
//                   ),
//                   controller: content_controller,
//                  ),
//                  SizedBox(height: 10,),
//                  ElevatedButton(onPressed: (){
//                      if(task_controller.text!=""  &&  content_controller.text!="" ){
//                              if(itemkey == null){
//                               createTask({
//                                 'name':task_controller.text.trim(),
//                                 'content':content_controller.text.trim()
//                               });
//                              }else{
//                               updatetask(itemkey,{
//                               'name':task_controller.text.trim(),
//                                 'content':content_controller.text.trim()
//                               });
//                              }
                             
//                      }
//                              task_controller.text = "";
//                              content_controller.text = '';
//                              Navigator.of(context).pop();
//                  }, 
//                  child:Text(itemkey == null ? "Create Task" : "Update Task")
//                  )

//               ],
//             ),
//           );
//         });
//   }
  
// Future  <void >createTask(Map<String, dynamic> task)async {
//   //if we want to store value to single key we using put
//   //else we using add for storing more than one values
//      await myBox.add(task);
//      readTask();
//   }
  
//  Future <void> updatetask(int? itemkey, Map<String, String> map)async {
//     //we only want to update a single key so using 'put
//     await myBox.put(itemkey, map);
//     readTask();//to refreshing all the data
//   }
  
//   void readTask() {
//     //keys vech vilichal hivel ethra key undo athokke kittum
//     //key ullath map l aan appo aa key ude oro map verum
//     //key is denote each single key
//     final task_from_hive = myBox.keys.map((key){
//        final value = myBox.get(key);
//        return{
//         'id':key,
//         'taskname':value['name'],
//         'taskcont':value['content']
//        };
//     }).toList();
//     setState(() {
//       //reversed is used to get last stored data at start
//       task = task_from_hive.reversed.toList();
//     });
//   }
  
//  Future <void> deleteTask(int itemkey) async{
//     await myBox.delete(itemkey);
//     readTask();
//   }
// }
