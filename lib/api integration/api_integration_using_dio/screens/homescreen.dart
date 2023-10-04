import 'package:flutter/material.dart';
import 'package:flutter_project1/api%20integration/api_integration_using_dio/controller/data_controller.dart';
import 'package:flutter_project1/api%20integration/api_integration_using_dio/screens/detailpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void main() {
  runApp(GetMaterialApp(
    home: NewsHome(),
  ));
}

class NewsHome extends StatelessWidget {
  DataController controller = Get.put(DataController());
  NewsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("NEWS"),
      ),
      body: Obx(() {
        return SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: controller.isNetConnected.value
              ? (controller.isLOading.value ? loadAnim() : getData())
              : noInternet(context),
        );
      }),
      floatingActionButton:
          Obx(() => controller.isNetConnected.value ? builFAB() : Container()),
    );
  }

  loadAnim() {
    return Center(
      child: SizedBox(
        height: 150,
        child: Lottie.asset("assets/animation_ln4c165a.json"),
      ),
    );
  }

  RefreshIndicator getData() {
    return RefreshIndicator(
        child: ScrollablePositionedList.builder(
          itemScrollController: controller.itemController,
            physics: BouncingScrollPhysics(),
            itemCount: controller.datas.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Get.to(Detaildata(
                  index: index,
                )),
                child: Card(
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey),
                      child: Text(controller.datas[index].id.toString()),
                    ),
                    title: Text(
                      controller.datas[index].title!,
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(controller.datas[index].body!),
                  ),
                ),
              );
            }),
        onRefresh: controller.fetchData());
  }

  Center noInternet(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 100,
            child: Lottie.asset('assets/animation_ln4cpux4.json'),
          ),
          MaterialButton(
            onPressed: () async {
              if (await InternetConnectionChecker().hasConnection == true) {
                controller.fetchData();
              } else {
                showTopSnackBar(
                  Overlay.of(context)!,
                  const CustomSnackBar.error(
                    message: "Something went wrong. Please check your internet",
                  ),
                );
              }
            },
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }

  FloatingActionButton builFAB() {
    return FloatingActionButton(
      onPressed: () {
        controller.isListatDown.value
            ? controller.scrollTOup()
            : controller.scrollToDown();
      },
      backgroundColor: Colors.blue,
      child: FaIcon(controller.isListatDown.value
          ? FontAwesomeIcons.arrowUp
          : FontAwesomeIcons.arrowDown),
    );
  }
}
