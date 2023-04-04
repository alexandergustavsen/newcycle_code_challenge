import 'package:newcycle_code_challenge/data/dataproviders/products_data_provider/products_data_provider_interface.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/data/repositories/products_repository/products_repository_interface.dart';

class ProductsRepository implements ProductsRepositoryInterface {
  ProductsRepository({
    required ProductsDataProviderInterface productsDataProviderInterface,
  }) : _productsDataProvider = productsDataProviderInterface;

  final ProductsDataProviderInterface _productsDataProvider;

  @override
  Future<List<Product>> getProducts() async {
    return await _productsDataProvider.getProducts();
  }
}
