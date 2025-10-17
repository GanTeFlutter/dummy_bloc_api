part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.started() = _Started;
  const factory ProductsEvent.getAllProducts() = _GetAllProducts;
  const factory ProductsEvent.getSelectedCategories(String categoryId) =
      _GetCategories;
}
