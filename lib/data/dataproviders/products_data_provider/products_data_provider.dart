import 'package:newcycle_code_challenge/data/dataproviders/products_data_provider/products_data_provider_interface.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/utils/mock_data.dart';

class ProductsDataProvider implements ProductsDataProviderInterface {
  @override
  Future<List<Product>> getProducts() async {
    return mockProducts;
  }
}
