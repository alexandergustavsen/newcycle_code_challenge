import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/presentation/global_widgets/main_card.dart';
import 'package:newcycle_code_challenge/router/app_router.dart';
import 'package:newcycle_code_challenge/utils/app_colors.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  final Product product;

  static const String routeName = '/productDetails';
  static const String argumentName = 'product';

  static void pushRoute({required Product product}) {
    AppRouter.pushNamed(
      routeName,
      arguments: {argumentName: product},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(PaddingSize.xlarge),
              child: Image.network(product.imageUrl),
            ),
          ),
          Expanded(
            child: MainCard(
              padding: const EdgeInsets.fromLTRB(
                PaddingSize.medium,
                PaddingSize.large,
                PaddingSize.medium,
                PaddingSize.xlarge,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              product.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: PaddingSize.xlarge),
                          Text(
                            '${product.price.toInt()} kr',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: PaddingSize.xsmall),
                      Text(
                        product.brand,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: PaddingSize.medium),
                  Text(
                    product.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: PaddingSize.xlarge),
                  MainCard(
                    radiusSize: RadiusSize.full,
                    padding: const EdgeInsets.symmetric(
                      horizontal: PaddingSize.medium,
                      vertical: PaddingSize.small,
                    ),
                    color: AppColors.lightBackground,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/trash.svg',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(width: PaddingSize.xsmall),
                        const Text(
                          'Fjern produkt',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
