import 'package:flutter/material.dart';

class PlatformProvider extends ChangeNotifier {
  bool? platformIsAndroid;
  PlatformProvider({required this.platformIsAndroid});
  getPlatform(bool isAndroid) {
    platformIsAndroid = isAndroid;
    notifyListeners();
  }
}
