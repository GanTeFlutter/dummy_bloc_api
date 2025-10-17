part of 'products_cubit.dart';

@immutable
sealed class ProductsState extends Equatable {}

final class ProductsInitial extends ProductsState {
  final String text;

  ProductsInitial({this.text = 'initial'});

  @override
  List<Object?> get props => [text];
}

final class ProductsSuccess extends ProductsState {
  final String text;

  ProductsSuccess(this.text);

  @override
  List<Object?> get props => [text];
}
