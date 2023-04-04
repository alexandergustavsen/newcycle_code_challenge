import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/presentation/global_widgets/main_card.dart';

class ProductsPendingErrorContent extends StatelessWidget {
  const ProductsPendingErrorContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MainCard(
        child: Text(
          'Klarte ikke å hente produkter...',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
