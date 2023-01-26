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
import 'package:mybigplate2/Widgets/details_page.dart';
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
  
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          title: Text(
            categoryName,
            style: TextStyle(
                fontFamily: 'Mansory',
                color: Colors.white,
                fontSize: _mediaQuery.size.longestSide * .03),
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
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return products = CatId == lst[index].catId
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleWidget()));
                    },
                    child: Container(
                        height: _mediaQuery.size.height * .16,
                        margin: EdgeInsets.all(10),
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
                        child: Row(
                          children: [
                            SizedBox(
                              height: _mediaQuery.size.height,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomLeft: Radius.circular(25)),
                                child: Image.asset(
                                  "assets/images/platters.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      lst[index].foodType == "veg"
                                          ? Icon(
                                              MyIcons.veg,
                                              color: Colors.green,
                                              size:
                                                  _mediaQuery.size.width * .02,
                                            )
                                          : Icon(
                                              MyIcons.veg,
                                              color: Colors.red,
                                              size:
                                                  _mediaQuery.size.width * .02,
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
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Flexible(
                                    fit: FlexFit.loose,
                                    flex: 1,
                                    child: SizedBox(
                                      width: _mediaQuery.size.width * .5,
                                      child: Text(
                                        lst[index].description,
                                        style: TextStyle(
                                            fontFamily: 'Mansory',
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    lst[index].Price.toString(),
                                    style: TextStyle(
                                        fontFamily: 'Mansory',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orangeAccent,
                                          shadowColor:
                                              Color.fromARGB(255, 215, 149, 63),
                                          elevation: 4),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => DailogWidget(
                                                  index: index,
                                                ));
                                      },
                                      child: Text("Add",
                                          style: TextStyle(
                                            fontFamily: "Mansory",
                                          ))),
                                ],
                              ),
                            ),
                          ],
                        )),
                  )
                : SizedBox();
          },
          itemCount: lst.length,
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 10,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartWidget(),
                ));
          },
          child: Icon(
            FontAwesomeIcons.shoppingCart,
            size: 28,
            color: Colors.orange,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 76,
        child: BottomAppBar(
          color: Colors.orange,
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
        ),
      ),
    );
  }
}
