import 'package:newcycle_code_challenge/data/models/product/product.dart';

abstract class ProductsRepositoryInterface {
  Future<List<Product>> getProducts();
}
