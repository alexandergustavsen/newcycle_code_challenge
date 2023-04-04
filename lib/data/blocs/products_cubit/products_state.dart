part of 'products_cubit.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object?> get props => [];
}

class ProductsInitial extends ProductsState {
  const ProductsInitial();
}

class ProductsLoading extends ProductsState {
  const ProductsLoading();
}

class ProductsError extends ProductsState {
  const ProductsError({required this.message});

  final String message;
}

class ProductsUpdated extends ProductsState {
  const ProductsUpdated({required this.products});

  final List<Product> products;

  @override
  List<Object> get props => [products];
}
