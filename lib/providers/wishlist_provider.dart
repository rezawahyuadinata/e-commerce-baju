import 'package:flutter/material.dart';
import 'package:frontend/models/product_model.dart';

class WishlistProvider with ChangeNotifier {
  List<ProdukModel> _wishlist = [];

  List<ProdukModel> get wishlist => _wishlist;

  set wishlist(List<ProdukModel> wishlist) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setProduct(ProdukModel product) {
    if (!isWishlist(product)) {
      _wishlist.add(product);
    } else {
      _wishlist.removeWhere((element) => element.id == product.id);
    }
  }

  isWishlist(ProdukModel product) {
    if (_wishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
