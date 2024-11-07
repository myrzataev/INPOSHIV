import 'package:flutter/material.dart';
import 'package:inposhiv/features/survey/data/models/job_priorities_model.dart';

class PrioritiesProvider extends ChangeNotifier {
  Set<JobPrioritiesModel>? selectedManufacturerPriorities;
  String? monthProductsVolume;
  void updateManufacturerPriorities({
    required Set<JobPrioritiesModel> newValue,
  }) {
    selectedManufacturerPriorities = newValue;

    notifyListeners();
  }

  void updateMonthProductsVolume({
    required String newValue,
  }) {
    monthProductsVolume = newValue;

    notifyListeners();
  }
}
