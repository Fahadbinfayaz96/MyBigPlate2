// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last, iterable_contains_unrelated_type, unrelated_type_equality_checks

import 'package:flutter/material.dart';
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
        height: _mediaQuery.size.height * .53,
        width: _mediaQuery.size.width * .4,
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
            SizedBox(
              height: 156,
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
                          // cart.items.any(
                          //       (element) =>
                          //           element.id == lst[index].id &&
                          //           element.isHalfItem == false,
                          //     )?
                  
                               ElevatedButton(
                                  onPressed: () {
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
                              // : Container(
                              //     padding: EdgeInsets.all(5),
                              //     width: 100,
                              //     decoration: BoxDecoration(
                              //         color: Colors.black,
                              //         borderRadius: BorderRadius.circular(12)),
                              //     child: Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceEvenly,
                              //       children: [
                              //         InkWell(
                              //           onTap: () {
                              //             if (cart.items
                              //                     .firstWhere((element) =>
                              //                         element.id ==
                              //                         lst[index].id)
                              //                     .quantity >
                              //                 1) {
                              //               cart.decreaseQuantity(cart.items
                              //                   .firstWhere((element) =>
                              //                       element.id ==
                              //                       lst[index].id));
                              //             }else{
                              //                Text("Nothing is there");
                              //             }    
                                         
                              //           },
                              //           child: Icon(
                              //             FontAwesomeIcons.minus,
                              //             color: Colors.white,
                              //           ),
                              //         ),
                              //         Text(
                              //          // "${cart.items.firstWhere((element) => element.id == lst[index].id).quantity.toInt().toString()}",
                                       
                              //           "0",
                              //           style: TextStyle(
                              //               color: Colors.white, fontSize: 25),
                              //         ),
                              //         InkWell(
                              //           onTap: () => 
                                       
                                        
                              //           cart.increaseQuantity(
                              //               cart.items.firstWhere((element) =>
                              //                   element.id == lst[index].id)
                              //                   ),
                              //           child: Icon(
                              //             FontAwesomeIcons.plus,
                              //             color: Colors.white,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   )
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
                           
                          // cart.items.any(
                          //   (element) =>
                          //       element.halfPrice == lst[index].halfPrice &&
                          //       element.isHalfItem == true 
                          // )?

                          ElevatedButton(
                            onPressed: () {
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
                          // : Container(
                          //     padding: EdgeInsets.all(5),
                          //     width: 100,
                          //     decoration: BoxDecoration(
                          //         color: Colors.black,
                          //         borderRadius: BorderRadius.circular(12)),
                          //     child: Row(
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceEvenly,
                          //       children: [
                          //         InkWell(
                          //           onTap: () {
                          //             if (cart.items
                          //                     .firstWhere((element) =>
                          //                         element.id ==
                          //                         lst[index].id)
                          //                     .quantity >
                          //                 1) {
                          //               cart.decreaseQuantity(cart.items
                          //                   .firstWhere((element) =>
                          //                       element.id ==
                          //                       lst[index].id));
                          //             }
                          //           },
                          //           child: Icon(
                          //             FontAwesomeIcons.minus,
                          //             color: Colors.white,
                          //           ),
                          //         ),
                          //         Text(
                          //           // "${cart.items.firstWhere((element) => element.id == lst[index].id).quantity.toInt().toString()}",
                          //           "0",
                          //           style: TextStyle(
                          //               color: Colors.white, fontSize: 25),
                          //         ),
                          //         InkWell(
                          //           onTap: () => cart.increaseQuantity(
                          //               cart.items.firstWhere((element) =>
                          //                   element.id == lst[index].id)),
                          //           child: Icon(
                          //             FontAwesomeIcons.plus,
                          //             color: Colors.white,
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   )
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
            Expanded(child: SizedBox()),

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
