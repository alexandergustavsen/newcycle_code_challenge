import 'package:flutter/material.dart';
import 'package:newcycle_code_challenge/presentation/features/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HomeAppBar(),
        ],
      ),
    );
  }
}
