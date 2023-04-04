import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product extends Equatable {
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

  static Map<String, dynamic> toMap(Product product) => {
        'name': product.name,
        'brand': product.brand,
        'price': product.price,
        'description': product.description,
        'imageUrl': product.imageUrl,
        'status': product.status,
      };

  static String encode(List<Product> products) => json.encode(
        products.map<Map<String, dynamic>>((product) => Product.toMap(product)).toList(),
      );

  static List<Product> decode(String products) =>
      (json.decode(products) as List<dynamic>).map<Product>((item) => Product.fromJson(item)).toList();

  Product copyWith({
    String? name,
    String? brand,
    double? price,
    String? description,
    String? imageUrl,
    String? status,
  }) {
    return Product(
      name: name ?? this.name,
      brand: brand ?? this.brand,
      price: price ?? this.price,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        name,
        brand,
        price,
        description,
        imageUrl,
        status,
      ];
}
