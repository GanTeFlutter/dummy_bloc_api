class ProductModel {
  final int id;
  final String name;
  final String description;
  final String photoUrl;
  final List<String> tags;
  final List<String> suitableSkinTypes;
  final List<String> ingredients;
  final String usageInstructions;
  final String barcode;
  final String subtypeName;
  final String companyName;
  final bool isFavorite;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.tags,
    required this.suitableSkinTypes,
    required this.ingredients,
    required this.usageInstructions,
    required this.barcode,
    required this.subtypeName,
    required this.companyName,
    required this.isFavorite,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      photoUrl: json['photo_url'],
      tags: List<String>.from(json['tags'] ?? []),
      suitableSkinTypes: List<String>.from(json['suitable_skin_types'] ?? []),
      ingredients: List<String>.from(json['ingredients'] ?? []),
      usageInstructions: json['usage_instructions'] ?? '',
      barcode: json['barcode'] ?? '',
      subtypeName: json['subtypes']['name'],
      companyName: json['companies']['name'],
      isFavorite: (json['favorites'] as List<dynamic>? ?? []).isNotEmpty,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'photo_url': photoUrl,
      'tags': tags,
      'suitable_skin_types': suitableSkinTypes,
      'ingredients': ingredients,
      'usage_instructions': usageInstructions,
      'barcode': barcode,
      'subtype_name': subtypeName,
      'company_name': companyName,
      'is_favorite': isFavorite,
    };
  }
}
