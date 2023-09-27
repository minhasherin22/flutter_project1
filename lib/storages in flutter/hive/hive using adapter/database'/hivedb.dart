import 'package:flutter_project1/storages%20in%20flutter/hive/hive%20using%20adapter/models/user_model.dart';
import 'package:hive/hive.dart';

class HiveDb{
  HiveDb.internal();
  static HiveDb instance =  HiveDb.internal();

  factory HiveDb(){
    return instance;
  }


  Future<void>addUser(User user)async{
    final db = await Hive.openBox<User>('UserData');
    db.put(user.id, user);
  }

   Future<List<User>> getUser()async{
   
    final db = await Hive.openBox<User>('userData');
    return db.values.toList();
  }
}