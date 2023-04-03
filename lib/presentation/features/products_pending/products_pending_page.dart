import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/presentation/features/products_pending/widgets/widgets.dart';
import 'package:newcycle_code_challenge/router/app_router.dart';
import 'package:newcycle_code_challenge/utils/app_colors.dart';
import 'package:newcycle_code_challenge/utils/mock_data.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class ProductsPendingPage extends StatelessWidget {
  const ProductsPendingPage({super.key});

  static const String routeName = '/productPending';
  static void pushRoute() => AppRouter.pushNamed(routeName);

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
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(PaddingSize.medium),
          children: [
            ...mockProducts.map(
              (product) => Padding(
                padding: const EdgeInsets.only(bottom: PaddingSize.small),
                child: ProductPendingItem(
                  product: product,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
