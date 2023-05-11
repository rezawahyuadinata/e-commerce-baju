import 'package:frontend/models/category_model.dart';
import 'package:frontend/models/gallery_model.dart';

class ProdukModel {
  late int? id;
  late String? name;
  late double? price;
  late String? description;
  late String? tags;
  late KategoriModel? category;
  late DateTime? createdAt;
  late DateTime? updatedAt;
  late List<GaleriModel>? galleries;

  ProdukModel({
    this.id,
    this.name,
    this.price,
    this.description,
    this.tags,
    this.category,
    this.createdAt,
    this.updatedAt,
    this.galleries,
  });

  ProdukModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = KategoriModel.fromJson(json['category']);
    galleries = json['galleries']
        .map<GaleriModel>((gallery) => GaleriModel.fromJson(gallery))
        .toList();
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category?.toJson(),
      'galleries': galleries?.map((gallery) => gallery.toJson()).toList(),
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}

class UninitializedProductModel extends ProdukModel {}
