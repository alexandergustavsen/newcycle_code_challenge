import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newcycle_code_challenge/data/models/product/product.dart';
import 'package:newcycle_code_challenge/presentation/global_widgets/main_card.dart';
import 'package:newcycle_code_challenge/utils/app_colors.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class ProductPendingItem extends StatelessWidget {
  const ProductPendingItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return MainCard(
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            height: 30,
            width: 30,
          ),
          const SizedBox(width: PaddingSize.small),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  product.brand,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: PaddingSize.medium),
          Row(
            children: [
              MainCard(
                padding: const EdgeInsets.all(PaddingSize.xsmall),
                radiusSize: RadiusSize.medium,
                color: AppColors.green,
                child: SvgPicture.asset(
                  'assets/svg/plus.svg',
                  height: 20,
                  width: 20,
                ),
              ),
              const SizedBox(width: PaddingSize.small),
              MainCard(
                padding: const EdgeInsets.all(PaddingSize.xsmall),
                radiusSize: RadiusSize.medium,
                color: AppColors.red,
                child: SvgPicture.asset(
                  'assets/svg/trash.svg',
                  height: 20,
                  width: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
