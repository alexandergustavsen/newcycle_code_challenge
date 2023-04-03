// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      name: json['name'] as String,
      brand: json['brand'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'brand': instance.brand,
      'price': instance.price,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'status': instance.status,
    };
