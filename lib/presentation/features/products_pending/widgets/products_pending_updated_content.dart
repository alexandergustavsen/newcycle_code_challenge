import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/presentation/features/products_pending/widgets/widgets.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class ProductsPendingUpdatedContent extends StatelessWidget {
  const ProductsPendingUpdatedContent({
    required this.products,
    super.key,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(PaddingSize.medium),
      children: [
        ...products.map(
          (product) {
            if (product.status == "PENDING") {
              return Padding(
                padding: const EdgeInsets.only(bottom: PaddingSize.small),
                child: ProductPendingItem(
                  product: product,
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}
