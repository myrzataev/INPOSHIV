import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoProvider extends ChangeNotifier {
  List<XFile>? selectedPhotos = [];
  List<PlatformFile>? selectedFiles = [];
  void addToList({required List<XFile>? photos}) {
    selectedPhotos = photos;
    notifyListeners();
  }
    void addToFiles({required List<PlatformFile>? files}) {
    selectedFiles = files;
    notifyListeners();
  }
}
