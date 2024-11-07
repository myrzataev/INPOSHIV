import 'package:flutter/material.dart';

class OrderProvider extends ChangeNotifier {
  int? fabricId;
  String? productName;
  int? categoryId;
  int? priceRub;
  int? priceUsd;
  int? sizeId;
  int? quantity;
  double? currency;
  void updateFabricId({int? id}) {
    fabricId = id;
    notifyListeners();
  }

  void updateCurrency({required double newCurrency}) {
    currency = newCurrency;
    notifyListeners();
  }

  void updateCategoryId({required int? id}) {
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

  void updateProductName({required String? name}) {
    productName = name;
    notifyListeners();
  }
}
