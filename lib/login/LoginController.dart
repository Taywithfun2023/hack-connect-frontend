import 'dart:core';

import 'package:get/get.dart';

class LoginController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  bool login(String name, String password) {
    return name == "kev" && password == "test";
  }

  bool signup(String name, String password) {
    return true;
  }

  bool recoverPassword() {
    return true;
  }


}