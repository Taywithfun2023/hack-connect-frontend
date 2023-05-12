import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack_connect_frontend/chat/ChatScreen.dart';
import 'package:hack_connect_frontend/home/HomeController.dart';
import 'package:hack_connect_frontend/ui_components/CustomAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => Scaffold(
              appBar: CustomAppBar(
                leadingButton:
                    IconButton(onPressed: () => {}, icon: Icon(Icons.settings)),
              ),
              body: Container(
                padding:
                    EdgeInsets.only(left: 20, bottom: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.search),
                        Expanded(
                          child: TextField(),
                        ),
                      ],
                    ),
                    Container(height: 20),
                    Column(
                      children: controller.news,
                    )
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.chat),
                onPressed: () => {Get.to(ChatScreen())},
              ),
            ));
  }
}
