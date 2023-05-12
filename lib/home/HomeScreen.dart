import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hack_connect_frontend/home/HomeController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => Center(
              child: Text("Login Success"),
            ));
  }
}
