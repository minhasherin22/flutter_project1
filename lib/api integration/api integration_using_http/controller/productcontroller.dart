import 'package:flutter_project1/api%20integration/api%20integration_using_http/service/api_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController{
  //variable nte value change observe cheyyan obs use cheyyunnu obs-observable
  var isLoading = true.obs;
  var productList = [].obs;
//initially ndh nadakkunnu nokkan get l use cheyynne function
  @override
  void onInit() {
    getProducts();
    super.onInit();
  }
  
  void getProducts() async{
    //maybe have orblm like net issue so using try catch
    try{
      isLoading(true);
      var products = await HttpService.fetchproducts();
      if(products != null){
        productList.value = products;
      }
    }catch(e){
      print(e);
    }finally{
      isLoading(false);
    }

}
}