import 'package:flutter/material.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/set_quantity_screen.dart';

class SizeProvider extends ChangeNotifier {
  List<SizeModel> sizes = [
    SizeModel(usSize: "XS", ruSize: 42, quantity: 0),
    SizeModel(usSize: "S", ruSize: 44, quantity: 0),
    SizeModel(usSize: "M", ruSize: 46, quantity: 0),
    SizeModel(usSize: "L", ruSize: 48, quantity: 0),
    SizeModel(usSize: "XL", ruSize: 50, quantity: 0),
    SizeModel(usSize: "XXL", ruSize: 52, quantity: 0),
  ];
  int totalQuantity = 0;

  void setSizes({
    required List<SizeModel> sizeList,
  }) {
    sizes = sizeList;

    notifyListeners();
  }

  void setTotalQuantity({required int total}) {
    totalQuantity = total;
    notifyListeners();
  }
}
