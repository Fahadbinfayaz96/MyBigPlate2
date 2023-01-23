// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../Providers/CartProvider.dart';

class QuantityWidget extends StatelessWidget {
  QuantityWidget({
    Key? key,
    required this.index,
  }) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    final cartPro = Provider.of<CartProvider>(context);
    return Container(
      padding: EdgeInsets.all(5),
      width: 140,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              if (cartPro.items[index].quantity > 1) {
                cartPro.decreaseQuantity(cartPro.items[index]);
              }
            },
            child: Icon(
              FontAwesomeIcons.minus,
              size: 20,
              color: Colors.white,
            ),
          ),
          Text(
            " ${cartPro.items[index].quantity.toStringAsFixed(0)}",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          InkWell(
            onTap: () {
              cartPro.increaseQuantity(cartPro.items[index]);
            },
            child: Icon(
              FontAwesomeIcons.plus,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
