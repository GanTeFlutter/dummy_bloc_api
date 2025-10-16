import 'package:ahmetttttttdusme/lib/data/model/sub/subcategories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';
part 'categories.g.dart';

@freezed
abstract class Categories with _$Categories {
  const factory Categories({
    required String id,
    required String name,
    required List<Subcategories> subcategories,
  }) = _Categories;

  factory Categories.fromJson(Map<String, Object?> json) =>
      _$CategoriesFromJson(json);
}
