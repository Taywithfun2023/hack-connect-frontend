import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack_connect_frontend/profile/ProfileController.dart';
import 'package:hack_connect_frontend/ui_components/CustomAppBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) => Scaffold(
            appBar: CustomAppBar(
              leadingButton: IconButton(
                  onPressed: () => {Get.back()},
                  icon: Icon(Icons.keyboard_backspace_rounded)),
            ),
            body: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.amber,
                        )
                      ],
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Name:"),
                            Text("name_value"),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ]),
                      padding: EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 10),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("E-Mail:"),
                            Text("mail_value"),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ]),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mobil:"),
                            Text("mobile_value"),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ]),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Skills:"),
                            Text("skills_value"),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ]),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sprachen:"),
                            Text("languages_value"),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ]),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ],
                )
              ],
            )));
  }
}
