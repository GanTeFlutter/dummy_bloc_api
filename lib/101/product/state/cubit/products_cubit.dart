import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.dart';

class ProductsCubit101 extends Cubit<ProductsState> {
  ProductsCubit101({String initialText = 'Initial Text'})
    : super(ProductsInitial(text: initialText));

  void changeText(String newText) {
    emit(ProductsSuccess(newText));
  }
}
