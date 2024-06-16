import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/app_const.dart';

class FoodModel {
  String name;
  double price;
  String description;
  double rating;
  String images;

  FoodModel({
    required this.name,
    required this.price,
    required this.description,
    required this.rating,
    required this.images,
  });
}

final List<FoodModel>foodList = [
  FoodModel(
    name: 'coca Javscript',
    price: 12,
    description:LOREM_IPSUM,
    rating: 4.5,
    images: 'assets/images/food1.jpg',
  ),
   FoodModel(
    name: 'pessi',
    price: 12,
    description: LOREM_IPSUM,
    rating: 4.5,
    images: 'assets/images/food2.jpg',
  ),
   FoodModel(
    name: 'Millinda',
    price: 12,
    description: LOREM_IPSUM,
    rating: 4.9,
    images: 'assets/images/food3.jpg',
  ),
   FoodModel(
    name: 'Break CoCaCola',
    price: 120,
    description: LOREM_IPSUM,
    rating: 4.3,
    images: 'assets/images/food4.jpg',
  ),
  FoodModel(
    name: 'coca company',
    price: 12,
    description: LOREM_IPSUM,
    rating: 4.6,
    images: 'assets/images/food5.jpg',
  ),
   FoodModel(
    name: 'coca express JS',
    price: 19,
    description: LOREM_IPSUM,
    rating: 4.8,
    images: 'assets/images/food6.jpg',
  ),
   FoodModel(
    name: 'Pizza Company',
    price: 8.2,
    description: LOREM_IPSUM,
    rating: 4.5,
    images: 'assets/images/food7.jpg',
  ),
];
