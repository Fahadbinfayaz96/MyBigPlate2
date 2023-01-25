// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mybigplate2/Providers/ListOfItemsProvider.dart';
import 'package:provider/provider.dart';
import '../Providers/CartProvider.dart';
import '../my_icons_icons.dart';
import 'CartWidget.dart';
import 'CartQuantityWidget.dart';

class CartItemList extends StatelessWidget {
  int index;
  CartItemList({required this.index});
  @override
  Widget build(BuildContext context) {
    final cartPro = Provider.of<CartProvider>(context);
    final lstdata = Provider.of<ListOfItemsProvider>(context);

    return Slidable(
      endActionPane: ActionPane(motion: const ScrollMotion(), children: [
        SlidableAction(
          icon: Icons.delete,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
          backgroundColor: Colors.red.withOpacity(0.3),
          onPressed: ((context) {
            if (cartPro.items.any((element) =>
                element.isHalfItem == false &&
                element.price == lstdata.items[index].Price )) {
              cartPro.removeItems(cartPro.items[index]);
            } 
            
            else  {
              cartPro.removeItems(cartPro.items[index]);
            }
          }),
        )
      ]),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, blurRadius: 4, spreadRadius: 3)
          ],
        ),
        margin: EdgeInsets.all(12),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
          child: SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "${cartPro.items[index].title}",
                      style: TextStyle(
                          fontFamily: "Mansory",
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    cartPro.items[index].foodType == "veg"
                        ? Icon(
                            MyIcons.veg,
                            color: Colors.green,
                          )
                        : Icon(
                            MyIcons.veg,
                            color: Colors.red,
                          ),
                    Expanded(child: SizedBox()),
                    Text(
                      cartPro.items[index].isHalfItem
                          ? "${cartPro.items[index].halfPrice}"
                          : "${cartPro.items[index].price}",
                      style: TextStyle(fontFamily: "Mansory"),
                    )
                  ],
                ),
                Row(
                  children: [
                    QuantityWidget(
                      index: index,
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      cartPro.items[index].isHalfItem
                          ? "${cartPro.items[index].halfPrice * cartPro.items[index].quantity}"
                          : "${cartPro.items[index].price * cartPro.items[index].quantity}",
                      style: TextStyle(fontFamily: "Mansory"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
