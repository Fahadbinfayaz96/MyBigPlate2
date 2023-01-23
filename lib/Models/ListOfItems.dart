import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class ListOfItems {
  final String id;
  final String catId;
  final String foodType;
  final String itemName;
  final String description;
  final double Price;
  final double halfPrice;

  ListOfItems(
      {required this.id,
      required this.foodType,
      required this.itemName,
      required this.description,
      required this.Price,
      required this.catId,
      required this.halfPrice, 
      });
}
