import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';
import 'package:hack_connect_frontend/chat/ChatController.dart';
import 'package:hack_connect_frontend/ui_components/CustomAppBar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(
        init: ChatController(),
        builder: (controller) => Scaffold(
              appBar: CustomAppBar(
                leadingButton: IconButton(
                    onPressed: () => {Get.back()},
                    icon: Icon(Icons.keyboard_backspace_rounded)),
              ),
              body: Chat(
                  messages: controller.messages,
                  onSendPressed: (text) => {controller.sendMessage(text)},
                  user: controller.sender),
            ));
  }
}
