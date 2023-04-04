part of 'inventory_cubit.dart';

abstract class InventoryState extends Equatable {
  const InventoryState();

  @override
  List<Object> get props => [];
}

class InventoryInitial extends InventoryState {
  const InventoryInitial();
}

class InventoryUpdated extends InventoryState {
  const InventoryUpdated({required this.products});

  final List<Product> products;

  @override
  List<Object> get props => [products];
}
