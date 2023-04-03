import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newcycle_code_challenge/presentation/features/products_pending/products_pending_page.dart';
import 'package:newcycle_code_challenge/presentation/global_widgets/main_card.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class ProductsPendingTile extends StatelessWidget {
  const ProductsPendingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      radiusSize: RadiusSize.medium,
      onTap: () => ProductsPendingPage.pushRoute(),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svg/package.svg',
            height: 24,
            width: 24,
          ),
          const SizedBox(width: PaddingSize.small),
          const Text(
            'Ventede produkter',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/svg/chevron-right.svg',
            height: 24,
            width: 24,
          ),
        ],
      ),
    );
  }
}
