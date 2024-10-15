import 'package:flutter/material.dart';

class OrderProvider extends ChangeNotifier {
  int? fabricId;
  String? productName;
  int? categoryId;
  int? priceRub;
  int? priceUsd;
  int? sizeId;
  int? quantity;
  void updateFabricId({int? id}) {
    fabricId = id;
    notifyListeners();
  }

  void updateCategoryId({int? id}) {
    categoryId = id;
    notifyListeners();
  }

  void updatePrice({int? priceInRuble, int? priceInUsd}) {
    priceRub = priceInRuble;
    priceUsd = priceInUsd;
    notifyListeners();
  }

  void updateSizeId({int? id}) {
    sizeId = id;
    notifyListeners();
  }

  void updateQuantity({int? quantity}) {
    quantity = quantity;
    notifyListeners();
  }

  void updateProductName({int? id}) {
    fabricId = id;
    notifyListeners();
  }
}
