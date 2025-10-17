// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Categories _$CategoriesFromJson(Map<String, dynamic> json) => _Categories(
  id: json['id'] as String,
  name: json['name'] as String,
  subcategories: (json['subcategories'] as List<dynamic>)
      .map((e) => Subcategories.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoriesToJson(_Categories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subcategories': instance.subcategories,
    };
