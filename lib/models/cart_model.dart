import 'package:frontend/models/product_model.dart';

class KeranjangModel {
  late int? id;
  late ProdukModel? product;
  late int? quantity;

  KeranjangModel({
    this.id,
    this.product,
    this.quantity,
  });

  KeranjangModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = ProdukModel.fromJson(json['product']);
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product?.toJson(),
      'quantity': quantity,
    };
  }

  getTotalPrice() {
    var totalHargaProduct = product?.price;

    return totalHargaProduct! * quantity!;
  }
}
