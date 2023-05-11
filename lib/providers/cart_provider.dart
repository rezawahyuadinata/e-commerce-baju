import 'package:flutter/material.dart';
import 'package:frontend/models/cart_model.dart';

import '../models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<KeranjangModel> _carts = [];
  List<KeranjangModel> get carts => _carts;

  set carts(List<KeranjangModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(ProdukModel product) {
    if (productExist(product)) {
      int index =
          _carts.indexWhere((element) => element.product?.id == product.id);
      (_carts[index].quantity ?? 0) + 1;
    } else {
      _carts.add(KeranjangModel(
        id: _carts.length,
        product: product,
        quantity: 1,
      ));
    }
  }

  removeCart(int id) {
    _carts.remove(id);
    notifyListeners();
  }

  addQuantity(int id) {
    (_carts[id].quantity ?? 0) + 1;
    notifyListeners();
  }

  reduceQuantity(int id) {
    (_carts[id].quantity ?? 0) - 1;
    if (_carts[id].quantity == 0) {
      removeCart(id);
    }
    notifyListeners();
  }

  totalItems(int id) {
    (_carts[id].quantity ?? 0) - 1;
    if (_carts[id].quantity == 0) {
      _carts.removeAt(id);
    }
    notifyListeners();
  }

  totalPrice() {
    double total = 0;
    for (var item in _carts) {
      var hargaTotal = item.product?.price;

      total += (item.quantity! * hargaTotal!);
    }
    return total;
  }

  productExist(ProdukModel product) {
    if (_carts.indexWhere((element) => element.product?.id == product.id) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
