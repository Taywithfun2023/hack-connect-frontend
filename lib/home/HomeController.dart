import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  List<Widget> news = [];

  @override
  void onInit() {
    super.onInit();
    loadNews();
  }

  void loadNews() {
    for (int i = 0; i < 5; i++) {
      news.add(ListTile(leading: Text(i.toString()),
        title: Text("Nachricht "),
        trailing: Icon(Icons.star),));
    }
  }

}