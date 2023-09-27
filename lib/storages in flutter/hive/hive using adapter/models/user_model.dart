import 'package:hive/hive.dart';
part 'user_model.g.dart';//for creating user_model.g.dart file inside the modal folder
///id never be same diff class shld have diff id
///also  field shld be different
/////when we adding new field in this
///and run the same command 
///then it automatically added to user_model.g.dart file
@HiveType(typeId: 1)
class User{


 @HiveField(0)
 final String email;
 

 @HiveField(1)
 final String password;


 @HiveField(2)
 String? id;

 @HiveField(3)
 String? name;


 User({required this.email,required this.password, this.id, this.name}){
  id = DateTime.now().microsecondsSinceEpoch.toString();
 }

}