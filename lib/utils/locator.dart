import 'package:get_it/get_it.dart';
import 'package:newcycle_code_challenge/data/blocs/inventory_cubit/inventory_cubit.dart';
import 'package:newcycle_code_challenge/data/blocs/products_cubit/products_cubit.dart';
import 'package:newcycle_code_challenge/data/dataproviders/products_data_provider/products_data_provider.dart';
import 'package:newcycle_code_challenge/data/dataproviders/products_data_provider/products_data_provider_interface.dart';
import 'package:newcycle_code_challenge/data/repositories/products_repository/products_repository.dart';
import 'package:newcycle_code_challenge/data/repositories/products_repository/products_repository_interface.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  // Blocs
  getIt
    ..registerLazySingleton<InventoryCubit>(
      InventoryCubit.new,
    )
    ..registerLazySingleton<ProductsCubit>(
      () => ProductsCubit(
        productsRepositoryInterface: getIt<ProductsRepositoryInterface>(),
      ),
    )

    // Repositories
    ..registerLazySingleton<ProductsRepositoryInterface>(
      () => ProductsRepository(
        productsDataProviderInterface: getIt<ProductsDataProviderInterface>(),
      ),
    )

    // Dataproviders
    ..registerLazySingleton<ProductsDataProviderInterface>(
      ProductsDataProvider.new,
    );

  // Storage

  // Services
}
