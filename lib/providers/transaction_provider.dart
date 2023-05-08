import 'package:flutter/material.dart';
import '../models/cart_model.dart';

class TransaksiProvider with ChangeNotifier {
  Future<bool> checkout(
      String token, List<KeranjangModel> carts, double totalPrice) async {
    try {
      if (await TransaksiProvider().checkout(token, carts, totalPrice)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
