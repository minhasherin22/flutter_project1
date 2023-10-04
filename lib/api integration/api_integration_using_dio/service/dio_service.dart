

import 'package:dio/dio.dart';

class DioService{
  Future<dynamic>getData(String url)async{
    Dio dio = Dio();
    //instead of passing url u can pass our link directly
    return await dio.get(url,
    options: Options(
      responseType: ResponseType.json,
      method: 'GET'
      //'then' is work only after 'async' operation
    )).then((response){
      return response;
    });
  }
}