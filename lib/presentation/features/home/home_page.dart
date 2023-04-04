import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newcycle_code_challenge/data/blocs/inventory_cubit/inventory_cubit.dart';
import 'package:newcycle_code_challenge/presentation/features/home/widgets/products_pending_tile.dart';
import 'package:newcycle_code_challenge/presentation/features/home/widgets/widgets.dart';
import 'package:newcycle_code_challenge/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<InventoryCubit>().getInventory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => context.read<InventoryCubit>().getInventory(),
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
              BlocBuilder<InventoryCubit, InventoryState>(
                builder: (context, state) {
                  if (state is InventoryUpdated) {
                    return GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      mainAxisSpacing: PaddingSize.small,
                      crossAxisSpacing: PaddingSize.small,
                      children: [
                        ...state.products.map(
                          (product) => ProductItem(product: product),
                        )
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
