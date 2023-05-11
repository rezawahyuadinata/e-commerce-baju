class GaleriModel {
  late int? id;
  late String? url;

  GaleriModel({
    this.id,
    this.url,
  });

  GaleriModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
