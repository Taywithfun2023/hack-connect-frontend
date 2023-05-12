
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack_connect_frontend/home/HomeController.dart';
import 'package:hack_connect_frontend/ui_components/CustomAppBar.dart';
import 'package:hack_connect_frontend/ui_components/SideMenu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => Scaffold(
                drawer: SideMenu(),
                key: controller.scaffoldKey,
                appBar: CustomAppBar(),
                body: ListView(),));
  }
}
