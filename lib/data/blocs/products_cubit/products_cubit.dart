import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/data/repositories/products_repository/products_repository_interface.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required ProductsRepositoryInterface productsRepositoryInterface})
      : _productsRepository = productsRepositoryInterface,
        super(const ProductsInitial());

  final ProductsRepositoryInterface _productsRepository;

  List<Product> products = [];

  Future<void> changeStatus({required Product product, required String status}) async {
    final updatedProduct = product.copyWith(status: status);
    products.removeWhere((element) => element.name == product.name);
    products.add(updatedProduct);
    emit(ProductsUpdated(products: products));
  }

  Future<void> getProducts() async {
    emit(const ProductsLoading());
    try {
      products = await _productsRepository.getProducts();
      emit(ProductsUpdated(products: products));
    } catch (e) {
      emit(ProductsError(message: e.toString()));
    }
  }
}
