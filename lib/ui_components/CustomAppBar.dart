import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack_connect_frontend/draft/HomeController.dart';
import 'package:hack_connect_frontend/ui_components/CustomAppBarController.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  IconButton leadingButton;

  CustomAppBar({required this.leadingButton});

  @override
  final Size preferredSize = Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomAppBarController>(
        init: CustomAppBarController(),
        builder: (controller) => AppBar(
                title: Text("Hack-Connect"),
                toolbarHeight: 80,
                leading: leadingButton,
                actions: [
                  IconButton(
                      iconSize: 80,
                      onPressed: () => {},
                      icon: CircleAvatar(child: Text(controller.usernameCred)))
                ]));
  }
}
