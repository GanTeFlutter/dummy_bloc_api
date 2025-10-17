// ignore_for_file: prefer_final_fields

import '../../model/categories/categories.dart';
import '../../model/sub/subcategories.dart';
import '../../service/damy_api.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(this._damyApiService) : super(_Initial()) {
    on<_Started>(_onStarted);
    on<_GetAllProducts>(_onGetAllProducts);
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

  Future<void> _onSelectedCategories(
    _SelectedCategories event,
    Emitter<ProductsState> emit,
  ) async {
    emit(ProductsState.loading());
    try {} on Exception catch (e) {
      emit(ProductsState.error(e.toString()));
    }
  }
}
