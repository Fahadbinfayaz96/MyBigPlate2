// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last, iterable_contains_unrelated_type, unrelated_type_equality_checks

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybigplate2/Widgets/CartQuantityWidget.dart';
import 'package:provider/provider.dart';
import '../Providers/CartProvider.dart';
import '../Providers/ListOfItemsProvider.dart';
import '../my_icons_icons.dart';

class DailogWidget extends StatelessWidget {
  const DailogWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final index;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    final lstData = Provider.of<ListOfItemsProvider>(context);
    final lst = lstData.items;
    final cart = Provider.of<CartProvider>(context);
    return Dialog(
      elevation: 30,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Container(
        padding: EdgeInsets.all(14.0),
        height:ScreenUtil.defaultSize.height * .7,
        width: ScreenUtil.defaultSize.width * 1.5,
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text("Place your order",
                    style: TextStyle(
                        fontFamily: "Mansory",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.orangeAccent))),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 70,
              child: Card(
                elevation: 10,
                child: Row(
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    lst[index].foodType == "veg"
                        ? Icon(
                            MyIcons.veg,
                            color: Colors.green,
                            size: _mediaQuery.size.width * .02,
                          )
                        : Icon(
                            MyIcons.veg,
                            color: Colors.red,
                            size: _mediaQuery.size.width * .02,
                          ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("${lst[index].itemName}",
                        style: TextStyle(
                            fontFamily: "Mansory",
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: SizedBox(
                width: _mediaQuery.size.width,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Full",
                                style: TextStyle(
                                    fontFamily: "Mansory", fontSize: 20)),
                            Expanded(child: SizedBox()),
                            Text(lst[index].Price.toString()),
                            SizedBox(
                              width: 10,
                            ),
                            ((cart.items.isNotEmpty &&
                                        cart.items.any((e) =>
                                            !(
                                              e.id == lst[index].id &&
                                                e.isHalfItem == false ))) ||
                                    cart.items.isEmpty)
                                ? ElevatedButton(
                                    onPressed: () {
                                      for (var e in cart.items) {
                                        log('${e.id}: ${e.isHalfItem} ');
                                      }
                                      //  log('From Full Item button: ${(cart.items.isNotEmpty && cart.items.any((e) => (e.id == lst[index].id && e.isHalfItem==false)))}');
                                      cart.addItems(CartItems(
                                        isHalfItem: false,
                                        id: lst[index].id,
                                        title: lst[index].itemName,
                                        price: lst[index].Price,
                                        halfPrice: lst[index].halfPrice,
                                        tax: 0.9,
                                        quantity: 1,
                                        foodType: "${lst[index].foodType}",
                                      ));
                                    },
                                    child: Text(
                                      "Add To Cart",
                                      style: TextStyle(fontFamily: "Mansory"),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orangeAccent),
                                  )
                                : Container(
                                    padding: EdgeInsets.all(5),
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (cart.items
                                                    .firstWhere((element) =>
                                                        element.id ==
                                                        lst[index].id)
                                                    .quantity >
                                                1) {
                                              cart.decreaseQuantity(cart.items
                                                  .firstWhere((element) =>
                                                      element.id ==
                                                      lst[index].id));
                                            } 
                                          },
                                          child: Icon(
                                            FontAwesomeIcons.minus,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "${cart.items.firstWhere((element) => element.id == lst[index].id).quantity.toInt().toString()}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25),
                                        ),
                                        InkWell(
                                          onTap: () => cart.increaseQuantity(
                                              cart.items.firstWhere((element) =>
                                                  element.id == lst[index].id)),
                                          child: Icon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Half",
                                style: TextStyle(
                                    fontFamily: "Mansory", fontSize: 20)),
                            Expanded(child: SizedBox()),
                            Text(lst[index].halfPrice.toString()),
                            SizedBox(
                              width: 10,
                            ),
                            (cart.items.isNotEmpty &&
                           
                                   (     cart.items.any(
                                          (e) => 
                                           e.id == lst[index].id &&
                                                  e.isHalfItem == true
                                              ? false//false
                                              : true//true
                                              )
                                        
                                        )) ||
                                    cart.items.isEmpty
                                ? ElevatedButton(
                                    onPressed: () {
                                        for (var e in cart.items) {
                                        log('${e.id}: ${e.isHalfItem} ');
                                      }
                                      //log('From half Item button: ${(cart.items.isNotEmpty && cart.items.any((e) => (e.id == lst[index].id && e.isHalfItem==true)))}');
                                      cart.addItems(CartItems(
                                        isHalfItem: true,
                                        id: lst[index].id,
                                        title: lst[index].itemName,
                                        price: lst[index].Price,
                                        halfPrice: lst[index].halfPrice,
                                        tax: 0.9,
                                        quantity: 1,
                                        foodType: "${lst[index].foodType}",
                                      ));
                                    },
                                    child: Text(
                                      "Add To Cart",
                                      style: TextStyle(fontFamily: "Mansory"),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orangeAccent),
                                  )
                                : Container(
                                    padding: EdgeInsets.all(5),
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (cart.items
                                                    .firstWhere((element) =>
                                                        element.id ==
                                                        lst[index].id)
                                                    .quantity >
                                                1) {
                                              cart.decreaseQuantity(cart.items
                                                  .firstWhere((element) =>
                                                      element.id ==
                                                      lst[index].id));
                                            }
                                          },
                                          child: Icon(
                                            FontAwesomeIcons.minus,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "${cart.items.firstWhere((element) => element.id == lst[index].id).quantity.toInt().toString()}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25),
                                        ),
                                        InkWell(
                                          onTap: () => cart.increaseQuantity(
                                              cart.items.firstWhere((element) =>
                                                  element.id == lst[index].id)),
                                          child: Icon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Text("${cart.itemsCount}")
            // ElevatedButton(
            //   onPressed: () {
            //     cart.addItems(CartItems(
            //       id: lst[index].id,
            //       title: lst[index].itemName,
            //       price: lst[index].Price,
            //       halfPrice: lst[index].halfPrice,
            //       tax: 0.9,
            //       quantity: 1,
            //       foodType: "${lst[index].foodType}",
            //     ));
            //   },
            //   child: Text(
            //     "Add To Cart",
            //     style: TextStyle(fontFamily: "Mansory"),
            //   ),
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.orangeAccent),
            // ),
          ],
        ),
      ),
    );
  }
}
