import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newcycle_code_challenge/data/blocs/products_cubit/products_cubit.dart';
import 'package:newcycle_code_challenge/presentation/features/products_pending/widgets/widgets.dart';
import 'package:newcycle_code_challenge/router/app_router.dart';
import 'package:newcycle_code_challenge/utils/app_colors.dart';

class ProductsPendingPage extends StatefulWidget {
  const ProductsPendingPage({super.key});

  static const String routeName = '/productPending';
  static void pushRoute() => AppRouter.pushNamed(routeName);

  @override
  State<ProductsPendingPage> createState() => _ProductsPendingPageState();
}

class _ProductsPendingPageState extends State<ProductsPendingPage> {
  @override
  void initState() {
    context.read<ProductsCubit>().getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Ventede produkter',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
      ),
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state is ProductsUpdated) {
            return ProductsPendingUpdatedContent(products: state.products);
          } else if (state is ProductsLoading) {
            return const ProductsPendingLoadingContent();
          } else {
            return const ProductsPendingErrorContent();
          }
        },
      ),
    );
  }
}
