import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  const Product({
    required this.name,
    required this.brand,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.status,
  });

  final String name;
  final String brand;
  final double price;
  final String description;
  final String imageUrl;
  final String status;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
