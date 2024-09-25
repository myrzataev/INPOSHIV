import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoProvider extends ChangeNotifier {
  List<XFile>? selectedPhotos = [];
  void addToList({required List<XFile>? photos}) {
    selectedPhotos = photos;
    notifyListeners();
  }
}
