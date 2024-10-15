import 'package:flutter/material.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_screen.dart';

class SizeProvider extends ChangeNotifier {
  List<SizeModelWithController> sizes = [
    SizeModelWithController(usSize: "XS", ruSize: 42, quantity: 0, id: 0),
  ];
  int totalQuantity = 0;

  void setSizes({
    required List<SizeModelWithController> sizeList,
  }) {
    sizes = sizeList;

    notifyListeners();
  }

  void setTotalQuantity({required int total}) {
    totalQuantity = total;
    notifyListeners();
  }
}
