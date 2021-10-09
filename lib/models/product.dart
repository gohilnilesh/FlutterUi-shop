import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.color,
  });
}

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/bag_1.png",
    title: "Fancy Bag",
    description: dummyText,
    price: 261,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    image: "assets/images/bag_2.png",
    title: "Stylish Bag",
    description: dummyText,
    price: 263,
    size: 12,
    color: const Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    image: "assets/images/bag_3.png",
    title: "Fashion Bag",
    description: dummyText,
    price: 243,
    size: 12,
    color: const Color(0xFF989493),
  ),
  Product(
    id: 4,
    image: "assets/images/bag_4.png",
    title: "Heavy Bag",
    description: dummyText,
    price: 243,
    size: 12,
    color: const Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    image: "assets/images/bag_5.png",
    title: "Small  Bag",
    description: dummyText,
    price: 243,
    size: 12,
    color: const Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    image: "assets/images/bag_6.png",
    title: "Office Bag",
    description: dummyText,
    price: 290,
    size: 12,
    color: const Color(0xFFAEAEAE),
  ),
];
