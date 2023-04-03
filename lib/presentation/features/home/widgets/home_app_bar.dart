import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            Resources.profileImg,
          ),
        ),
        const SizedBox(width: PaddingSize.small),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hei, Sara!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Oversikt over dine produkter',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
