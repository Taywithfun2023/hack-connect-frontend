import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:hack_connect_frontend/home/HomeScreen.dart';
import 'package:hack_connect_frontend/login/LoginController.dart';

const users = const {
  'kev': '123',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    return Future.delayed(loginTime).then((_) {
      Get.to(() => HomeScreen());
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) => Scaffold(
        appBar: CupertinoNavigationBar(
            leading: Text("Menu"), trailing: Text("Profil")),
        body: FlutterLogin(
            userType: LoginUserType.name,
            onLogin: _authUser,
            onSignup: _signupUser,
            onRecoverPassword: _recoverPassword),
      ),
    );
  }
}
