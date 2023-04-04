import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/presentation/global_widgets/main_card.dart';

class ProductsPendingLoadingContent extends StatelessWidget {
  const ProductsPendingLoadingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MainCard(
        child: Column(
          children: const [
            Text(
              'Henter produkter',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
