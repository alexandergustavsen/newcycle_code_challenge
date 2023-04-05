import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/utils/shared_pref_utils.dart';

part 'inventory_state.dart';

class InventoryCubit extends Cubit<InventoryState> {
  InventoryCubit() : super(const InventoryInitial());

  Future<void> addProduct({required Product product}) async {
    // Hent nåværende liste
    final String? inventoryString = await SharedPrefsUtils.getStringValue(SharedPrefsKey.inventory);

    List<Product> products = [];
    if (inventoryString != null) {
      products = Product.decode(inventoryString);
    }

    // Legg til nytt produkt
    if (!products.contains(product)) {
      products.add(product);
    }

    // Lagre listen lokalt
    final String encodeData = Product.encode(products);
    SharedPrefsUtils.setStringValue(SharedPrefsKey.inventory, encodeData);

    emit(InventoryUpdated(products: products));
  }

  Future<void> removeProduct({required Product product}) async {
    // Hent nåværende liste
    final String? inventoryString = await SharedPrefsUtils.getStringValue(SharedPrefsKey.inventory);
    List<Product> products = Product.decode(inventoryString!);

    // Fjern produkt fra lokal lagring
    products.removeWhere((element) => element.name == product.name);

    // Lagre listen lokalt
    final String encodeData = Product.encode(products);
    await SharedPrefsUtils.setStringValue(SharedPrefsKey.inventory, encodeData);

    emit(InventoryUpdated(products: products));
  }

  Future<void> getInventory() async {
    // Hent nåværende liste
    final String? inventoryString = await SharedPrefsUtils.getStringValue(SharedPrefsKey.inventory);
    List<Product> products = inventoryString != null ? Product.decode(inventoryString) : [];

    emit(InventoryUpdated(products: products));
  }
}
