// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybigplate2/Providers/CartProvider.dart';
import 'package:mybigplate2/my_icons_icons.dart';
import 'package:provider/provider.dart';

import 'CartItemList.dart';

class CartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartList = cartProvider.items;
    var _mediaQueryyy = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.black, fontSize: 35),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Column(
        children: [
          SizedBox(
            height: _mediaQueryyy.size.height * .63,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CartItemList(
                  index: index,
                );
              },
              itemCount: cartList.length,
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
              height: _mediaQueryyy.size.height * .20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      spreadRadius: 3)
                ],
              ),
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Item Total",style: TextStyle(fontFamily: "Mansory"),),
                      Text("${cartProvider.totalAmout}"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tax",style: TextStyle(fontFamily: "Mansory"),),
                      Text("${cartProvider.ItemTax}"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("To Pay"),
                      Text("${cartProvider.itemToPay}",style: TextStyle(fontFamily: "Mansory"),),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}