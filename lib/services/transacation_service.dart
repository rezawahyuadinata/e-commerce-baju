import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:frontend/models/cart_model.dart';

class TransaksiService {
  String baseUrl = 'http://api.gwenshouse.adinatarezawahyu.my.id/api';

  Future<bool> checkout(
      String token, List<KeranjangModel> carts, double totalPrice) async {
    var url = '$baseUrl/checkoout';

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    var body = jsonEncode(
      {
        'address': 'Jakarta',
        'items': carts
            .map(
              (cart) => {
                'id': cart.product!.id,
                'quantity': cart.quantity,
              },
            )
            .toList(),
        'status': "Pending",
        'total_price': totalPrice,
        'shipping_price': 0,
      },
    );

    var response = await http.post(
      url as Uri,
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception("gagal melakukan checkout");
    }
  }
}
