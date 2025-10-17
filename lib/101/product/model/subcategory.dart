class SubcategoryModel {
  final int id;
  final String name;
  final String photoUrl;

  SubcategoryModel({
    required this.id,
    required this.name,
    required this.photoUrl,
  });
  factory SubcategoryModel.fromJson(Map<String, dynamic> json) {
    return SubcategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String, // <-- düzeltildi
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'photoUrl': photoUrl}; // <-- düzeltildi
  }
}
