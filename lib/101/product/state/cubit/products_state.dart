part of 'products_cubit.dart';

@immutable
sealed class ProductsState extends Equatable {}

final class ProductsInitial extends ProductsState {
  @override
  List<Object?> get props => [];
}

final class ProductsLoading extends ProductsState {
  @override
  List<Object?> get props => [];
}

final class ProductsLoaded extends ProductsState {
  final List<CategoryModel> categories;
  final List<SubcategoryModel> subcategories;
  final CategoryModel? selectedCategory; // Seçilen kategori (null = tüm kategoriler)

  ProductsLoaded({
    required this.categories,
    required this.subcategories,
    this.selectedCategory,
  });

  @override
  List<Object?> get props => [categories, subcategories, selectedCategory ?? ''];
}

final class ProductsError extends ProductsState {
  final String message;

  ProductsError(this.message);

  @override
  List<Object?> get props => [message];
}
