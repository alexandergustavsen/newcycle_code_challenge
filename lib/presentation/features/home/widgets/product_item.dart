import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/presentation/features/product_details/product_details_page.dart';
import 'package:newcycle_code_challenge/presentation/global_widgets/main_card.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return MainCard(
      onTap: () => ProductDetailsPage.pushRoute(product: product),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            product.imageUrl,
            height: 60,
            width: 60,
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      product.brand,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: PaddingSize.xsmall),
              SvgPicture.asset(
                'assets/svg/chevron-right.svg',
                height: 24,
                width: 24,
              )
            ],
          ),
        ],
      ),
    );
  }
}
