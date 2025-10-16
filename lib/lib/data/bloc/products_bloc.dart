// ignore_for_file: prefer_final_fields

import 'package:ahmetttttttdusme/lib/data/model/categories/categories.dart';
import 'package:ahmetttttttdusme/lib/data/model/sub/subcategories.dart';
import 'package:ahmetttttttdusme/lib/data/service/damy_api.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(this._damyApiService) : super(_Initial()) {
    on<_Started>(_onStarted);
    on<_GetAllProducts>(_onGetAllProducts);
    on<_GetCategories>(_onSelectCategory);
  }

  late final DamyApiService _damyApiService;

  List<Categories> _categories = [];
  List<Subcategories> _subcategories = [];

  Future<void> _onStarted(_Started event, Emitter<ProductsState> emit) async {
    add(const ProductsEvent.getAllProducts());
  }

  Future<void> _onGetAllProducts(
    _GetAllProducts event,
    Emitter<ProductsState> emit,
  ) async {
    emit(ProductsState.loading());
    try {
      _categories = await _damyApiService.fetchDummyCategories();

      for (var category in _categories) {
        _subcategories.addAll(category.subcategories);
      }

      emit(ProductsState.loaded(_categories, _subcategories));
    } on Exception catch (e) {
      emit(ProductsState.error(e.toString()));
    }
  }

  Future<void> _onSelectCategory(
    _GetCategories event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      // emit(ProductsState.selectedCategories(selectedSubcategories));
    } on Exception catch (e) {
      emit(ProductsState.error(e.toString()));
    }
  }
}
