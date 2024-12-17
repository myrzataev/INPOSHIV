import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  bool userHasAccount = false;
  void updateUserProvider({required userHasAccountNew}) {
    userHasAccount = userHasAccountNew;
    notifyListeners();
  }
}
