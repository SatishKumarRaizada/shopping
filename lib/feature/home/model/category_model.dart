import 'dart:convert';

class CategoryModel {
  CategoryModel({
    this.id,
    this.title,
    this.image,
  });

  final String? id;
  final String? title;
  final String? image;

  CategoryModel copyWith({
    String? id,
    String? title,
    String? image,
  }) =>
      CategoryModel(
        id: id ?? this.id,
        title: title ?? this.title,
        image: image ?? this.image,
      );

  factory CategoryModel.fromRawJson(String str) => CategoryModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
      };
}
