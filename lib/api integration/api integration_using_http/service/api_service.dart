import '../model/productmodel.dart';
import 'package:http/http.dart'as http;
//here converting datas
//make our import as http
class HttpService{
  //product model is our class in model 
  static Future<List<Productmodel>>fetchproducts()async{
    var response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    //checking our response nte status code == 200 angana aanel respose le body full data l verum
    if(response.statusCode == 200){
      var data = response.body;
      return productmodelFromJson(data);
    }else{
      throw Exception();
    }
  }
}