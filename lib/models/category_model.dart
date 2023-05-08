class KategoriModel {
  late int id;
  late String name;

  KategoriModel({
    required this.id,
    required this.name,
  });

  KategoriModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
