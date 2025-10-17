import 'package:ahmetttttttdusme/101/product/model/subcategory.dart';

class CategoryModel {
  final int id;
  final String name;
  final String photoUrl;
  final List<SubcategoryModel> subcategories;

  CategoryModel({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.subcategories,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    var subcategoriesJson = json['subcategories'] as List<dynamic>? ?? [];
    List<SubcategoryModel> subcategories = subcategoriesJson
        .map((item) => SubcategoryModel.fromJson(item as Map<String, dynamic>))
        .toList();

    return CategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String, // <-- düzeltildi
      subcategories: subcategories,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'photoUrl': photoUrl, // <-- düzeltildi
      'subcategories': subcategories.map((sub) => sub.toJson()).toList(),
    };
  }
}
