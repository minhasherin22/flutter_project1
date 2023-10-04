import 'package:flutter/widgets.dart';
import 'package:flutter_project1/api%20integration/api_integration_using_dio/model/newsmodel.dart';
import 'package:flutter_project1/api%20integration/api_integration_using_dio/service/dio_service.dart';

import 'package:get/state_manager.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DataController extends GetxController {
  //another way of observing
  //this list is observable
  RxList<NewsMode> datas = RxList();
  RxBool isLOading = true.obs;
  RxBool isListatDown = false.obs;
  var isNetConnected = true.obs;
  var itemController = ItemScrollController();
//method for checking net connection
  var url = "https://jsonplaceholder.typicode.com/posts";

  @override
  void onInit() {
    fetchData();
    isInternetConnected();
    super.onInit();
  }

  isInternetConnected() async {
    isNetConnected.value = await InternetConnectionChecker().hasConnection;
  }

  //to get all data from api
  fetchData() async {
    isInternetConnected();
    isLOading.value = true;
    var response = await DioService().getData(url);
    if (response.statuscode == 200) {
      response.data.forEach((elemenet) {
        datas.add(NewsMode.fromJson(elemenet));
      });
      isLOading.value = false;
    }
  }

  //scroll list view to down
  scrollToDown() {
    itemController.scrollTo(
        index: datas.length - 4,
        duration: Duration(seconds: 4),
        curve: Curves.bounceOut);
    isListatDown.value = true;
  }

  //scroll list to up
  scrollTOup() {
    itemController.scrollTo(
      index: 0,
      duration: Duration(seconds: 4),
    );
    isListatDown.value = false;
  }
}
