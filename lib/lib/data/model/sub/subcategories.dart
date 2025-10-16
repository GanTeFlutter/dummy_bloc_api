// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategories.freezed.dart';
part 'subcategories.g.dart';

@freezed
abstract class Subcategories with _$Subcategories {
  const factory Subcategories({
    required String id,
    required String name,
    required String photo_url,
  }) = _Subcategories;

  factory Subcategories.fromJson(Map<String, Object?> json) =>
      _$SubcategoriesFromJson(json);
}
