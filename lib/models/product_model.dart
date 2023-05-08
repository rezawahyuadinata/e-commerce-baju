import 'package:frontend/models/category_model.dart';
import 'package:frontend/models/gallery_model.dart';

class ProdukModel {
  late int id;
  late String name;
  late double price;
  late String description;
  late String tags;
  late KategoriModel category;
  late DateTime createdAt;
  late DateTime updateAt;
  late List<GaleriModel> galleries;

  ProdukModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    required this.category,
    required this.createdAt,
    required this.updateAt,
    required this.galleries,
  });

  ProdukModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = KategoriModel.fromJson(json['category']);
    createdAt = DateTime.parse(json['createdAt']);
    updateAt = DateTime.parse(json['updateAt']);
    galleries = json['galleries']
        .map<GaleriModel>((galeri) => GaleriModel.fromJson(galeri))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'createdAt': createdAt.toString(),
      'updateAt': updateAt.toString(),
      'galleries': galleries.map((galeri) => galeri.toJson()).toList(),
    };
  }
}
