import 'package:flutter/material.dart';

class CategoryModal {
  String name;
  int totalItem;
  String images;

  CategoryModal ({
    required this.name,
    required this.totalItem,
    required this.images,
  });
}

final List<CategoryModal> categoryList = [
  CategoryModal(
    name: 'food',
    totalItem: 20,
    images: 'assets/images/food1.jpg',
  ),
   CategoryModal(
    name: 'Dessert',
    totalItem: 29,
    images: 'assets/images/food1.jpg',
  ),
   CategoryModal(
   name: 'Snacks',
    totalItem: 90,
    images: 'assets/images/food1.jpg',
  ),
   CategoryModal(
    name: 'Meat',
    totalItem: 99,
    images: 'assets/images/food1.jpg',
  ),
  CategoryModal(
   name: 'Street Food',
    totalItem: 39,
    images: 'assets/images/food1.jpg',
  ),
   CategoryModal(
    name: 'coca Javscript',
    totalItem: 49,
    images: 'assets/images/food1.jpg',
  ),
   CategoryModal (
    name: 'coca Javscript',
    totalItem: 69,
    images: 'assets/images/food1.jpg',
  ),
];
