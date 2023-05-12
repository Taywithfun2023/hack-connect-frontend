import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';

class ChatController extends GetxController {
  types.User sender = types.User(id: "1", firstName: "Tayfun");
  types.User receiver = types.User(id: "2", firstName: "Kevin");
  List<types.Message> messages = [];

  void sendMessage(types.PartialText text) {
    if (text.text.isNotEmpty) {
      displayMessageInChatWidget(text.text, sender);
    }
  }

  void displayMessageInChatWidget(String message, types.User author) {
    messages.insert(
        0,
        types.TextMessage(
            author: author,
            text: message,
            id: const Uuid().toString(),
            createdAt: DateTime.now().millisecondsSinceEpoch));

    update();
  }
}
