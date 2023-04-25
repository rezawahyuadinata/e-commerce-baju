import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:frontend/models/product_model.dart';

class ProductService {
  String baseUrl = 'http://api.gwenshouse.adinatarezawahyu.my.id/api';

  Future<List<ProdukModel>> getProducts() async {
    var url = '$baseUrl/products';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url as Uri, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProdukModel> products = [];

      for (var item in data) {
        products.add(ProdukModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Get Products');
    }
  }
}
