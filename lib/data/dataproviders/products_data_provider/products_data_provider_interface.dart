import 'package:newcycle_code_challenge/data/models/product/product.dart';

abstract class ProductsDataProviderInterface {
  Future<List<Product>> getProducts();
}
