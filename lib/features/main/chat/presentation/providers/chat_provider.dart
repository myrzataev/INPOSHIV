import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  String? orderId;
  String? chatRoomId;
  String? receipentId;
  void updateOrderId(String newOrderId) {
    orderId = newOrderId;
    notifyListeners();
  }

  void updateChatRoomId(String newChatId) {
    chatRoomId = newChatId;
    notifyListeners();
  }

  void updateReceipentId(String newReceipentId) {
    receipentId = newReceipentId;
    notifyListeners();
  }
}
