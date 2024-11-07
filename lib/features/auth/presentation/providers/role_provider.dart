import 'package:flutter/material.dart';

class RoleProvider extends ChangeNotifier {
  int role = 0;
  void changeRole(int userRole) {
    role = userRole;
    notifyListeners();
  }
}
