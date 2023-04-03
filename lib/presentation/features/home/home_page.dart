import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/presentation/features/home/widgets/products_pending_tile.dart';
import 'package:newcycle_code_challenge/presentation/features/home/widgets/widgets.dart';
import 'package:newcycle_code_challenge/utils/mock_data.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(PaddingSize.medium),
          children: [
            const HomeAppBar(),
            const SizedBox(height: PaddingSize.medium),
            const ProductsPendingTile(),
            const SizedBox(height: PaddingSize.medium),
            const Text(
              'Mine produkter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: PaddingSize.small),
            ...mockProducts.map(
              (product) => ProductItem(product: product),
            )
          ],
        ),
      ),
    );
  }
}
