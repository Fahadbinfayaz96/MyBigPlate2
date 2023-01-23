// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, sized_box_for_whitespace, deprecated_member_use, unnecessary_string_interpolations, unused_import, iterable_contains_unrelated_type, unused_field, prefer_final_fields, unrelated_type_equality_checks

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybigplate2/MainWidgets/Categories.dart';
import 'package:mybigplate2/MainWidgets/Home.dart';
import 'package:mybigplate2/Models/DialogBoxModel.dart';
import 'package:mybigplate2/Models/ListOfItems.dart';
import 'package:mybigplate2/Providers/CartProvider.dart';
import 'package:mybigplate2/Providers/ListOfItemsProvider.dart';
import 'package:mybigplate2/Widgets/CartItemList.dart';
import 'package:mybigplate2/Widgets/CartWidget.dart';
import 'package:mybigplate2/main.dart';
import 'package:provider/provider.dart';
import '../my_icons_icons.dart';
import 'CartQuantityWidget.dart';
import 'DailogWidget.dart';

class ListWidget extends StatelessWidget {
  String categoryName;
  String CatId;

  ListWidget({super.key, required this.categoryName, required this.CatId});

  late Widget products;

  @override
  Widget build(BuildContext context) {
    final lstData = Provider.of<ListOfItemsProvider>(context);
    final lst = lstData.items;
    final cart = Provider.of<CartProvider>(context);
    var _mediaQuery = MediaQuery.of(context);
    // final dailog = Provider.of<DailogBoxProvider>(context);
    // final dlist = dailog.items;
    return Scaffold(
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12, top: 6),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartWidget(),
                          ));
                    },
                    child: Icon(
                      FontAwesomeIcons.cartShopping,
                      size: 45,
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 18, left: 22),
                        child: Text("${cart.itemsCount.toString()}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ))
                ],
              ),
            )
          ],
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            categoryName,
            style: TextStyle(
                fontFamily: 'Mansory',
                color: Colors.black,
                fontSize: _mediaQuery.size.longestSide * .04),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return products = CatId == lst[index].catId
                ? Container(
                    height: 220,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 239, 183, 110),
                            blurRadius: 2,
                            spreadRadius: 1)
                      ],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                              width: 5,
                            ),
                            Text(
                              lst[index].itemName,
                              style: TextStyle(
                                  fontFamily: 'Mansory',
                                  fontSize: 16.2,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(child: SizedBox()),
                            Text(
                              lst[index].Price.toString(),
                              style: TextStyle(
                                  fontFamily: 'Mansory',
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            lst[index].description,
                            style: TextStyle(
                                fontFamily: 'Mansory',
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                          ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => DailogWidget(
                                    index: index,
                                  ));
                        },
                        child: Text(
                          "Add",
                          style: TextStyle(fontFamily: "Mansory"),
                        )),
                      
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('Already in cart',style: TextStyle(fontFamily: "Mansory",fontSize: 20),),
                        //     elevation: 10,
                        //     duration: Duration(seconds: 1),
                        //     backgroundColor: Color.fromARGB(255, 124, 124, 124),
                        //   ),
                        // );
                        //:
                      
                     
                      ],
                    ),
                  )
                : SizedBox();
          },
          itemCount: lst.length,
        ),
      ),
      floatingActionButton: Container(
        height: 90,
        width: 90,
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(
            Icons.home,
            size: 55,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => home(
                          mediaQuery: _mediaQuery,
                        )),
                (Route<dynamic> route) => route is home);
          },
        ),
      ),
    );
  }
}
