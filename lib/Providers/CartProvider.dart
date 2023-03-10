// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable

import 'dart:math';

import 'package:flutter/cupertino.dart';

class CartItems {
  final String id;
  final String title;
  final double price;
  final double tax;
  final String foodType;
  double quantity;
  final double halfPrice;
  final bool isHalfItem;

  CartItems({
    required this.id,
    required this.title,
    required this.price,
    required this.tax,
    required this.quantity,
    required this.foodType,
    required this.halfPrice,
    required this.isHalfItem,
  });
}

class CartProvider with ChangeNotifier {
  final List<CartItems> _items = [];

  List<CartItems> get items {
    return [..._items];
  }

// counting how many items are there in cart
  int get itemsCount {
    return _items.length;
  }

  double get totalAmout {
    var total = 0.0;
    if (_items.isNotEmpty) {
      for (var cartItem in _items) {
        total += (cartItem.price * cartItem.quantity);
      }
    }
    return total;
  }

  double get ItemTax {
    var totalTax = 0.0;
    if (_items.isNotEmpty) {
      for (var it in _items) {
        totalTax += it.quantity * it.tax;
      }
    }
    return totalTax;
  }

  double get itemToPay {
    var toPay = 0.0;
    if (_items.isNotEmpty) {
      for (var itp in _items) {
        toPay = totalAmout + ItemTax;
      }
    }

    return toPay;
  }

  void increaseQuantity(CartItems cartItems) {
    cartItems.quantity++;
    notifyListeners();
  }

  void decreaseQuantity(CartItems cartItems) {
    cartItems.quantity--;
    notifyListeners();
  }

  void removeItems(CartItems cartItems) {
   var r= _items.remove(cartItems);
    notifyListeners();
  }

  void addItems(CartItems cartItems) {
    if (!_items.any((element) =>
        element.price == cartItems.price && element.isHalfItem == false)) {
      _items.add(cartItems);
      notifyListeners();
    } else {
      _items.add(cartItems);
      notifyListeners();
    }
// if (!_items.any((element) => element.halfPrice == cartItems.halfPrice && element.isHalfItem == true))


  }
}
