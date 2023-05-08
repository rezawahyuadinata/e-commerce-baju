import 'package:flutter/material.dart';
import 'package:frontend/models/product_model.dart';
import 'package:frontend/services/product_service.dart';

class ProdukProvider with ChangeNotifier {
  List<ProdukModel> _products = [];
  List<ProdukModel> get products => _products;

  set products(List<ProdukModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<ProdukModel> products = await ProductService().getProducts();
      _products = products;
    } catch (e) {
      print(e);
    }
  }
}
