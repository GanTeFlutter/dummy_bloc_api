// products_cubit.dart
// ignore_for_file: prefer_final_fields

import 'package:ahmetttttttdusme/101/product/model/category.dart';
import 'package:ahmetttttttdusme/101/product/model/subcategory.dart';
import 'package:ahmetttttttdusme/101/product/service/dummy_api0.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'products_state.dart';

class ProductsCubit101 extends Cubit<ProductsState> {
  ProductsCubit101(this._dummyApiService) : super(ProductsInitial());

  final DamyApiService2 _dummyApiService;

  List<CategoryModel> _categories = [];
  List<SubcategoryModel> _subcategories = [];
  CategoryModel? _selectedCategory; // 👈 Seçili kategoriyi tutuyoruz

  Future<void> fetchAllProducts() async {
    emit(ProductsLoading());
    try {
      final allCategories = await _dummyApiService.fetchDummyCategories();
      _categories = allCategories;
      // Başlangıçta tüm alt kategoriler
      _subcategories = allCategories.expand((c) => c.subcategories).toList();
      _selectedCategory = null; // Başlangıçta seçili kategori yok
      
      emit(
        ProductsLoaded(
          categories: _categories,
          subcategories: _subcategories,
          selectedCategory: _selectedCategory, // 👈 State'e ekliyoruz
        ),
      );
    } catch (e) {
      emit(ProductsError('Ürünler yüklenirken hata oluştu: $e'));
    }
  }

  void selectCategory(CategoryModel? category) {
    _selectedCategory = category; // 👈 Seçili kategoriyi güncelliyoruz
    
    if (category == null) {
      // Hiç kategori seçilmemişse tüm alt kategoriler
      _subcategories = _categories.expand((c) => c.subcategories).toList();
    } else {
      // Sadece seçilen kategorinin alt kategorileri
      _subcategories = category.subcategories;
    }

    emit(
      ProductsLoaded(
        categories: _categories,
        subcategories: _subcategories,
        selectedCategory: _selectedCategory, // 👈 State'e ekliyoruz
      ),
    );
  }
}