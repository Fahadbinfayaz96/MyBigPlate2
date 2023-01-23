// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybigplate2/Component/CategoryPageRoute.dart';
import 'package:mybigplate2/Widgets/CartWidget.dart';
import 'package:mybigplate2/Widgets/ListWidget.dart';
import 'package:mybigplate2/Providers/CategoryProvider.dart';
import 'package:provider/provider.dart';

import '../Widgets/BannerWidget.dart';
import '../Widgets/FoodTypeWidget.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catData = Provider.of<CategoryProvider>(context);
    final cat = catData.items;
    var _mediaQuery2 = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(child: Builder(builder: (context) {
        //===========================================Potrait=======================================================

        if (_mediaQuery2.orientation == Orientation.portrait) {
          return Column(
            children: [
              BannerWidget(),
              // FoodTypeWidget(
              //   color: Colors.green,
              //   color1: Colors.red,
              // ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                    top: 14,
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 6, right: 6, top: 6, bottom: 18),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 240, 186, 104),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 185,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(cat[index].image),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(.6),
                                        BlendMode.hardLight,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    "${cat[index].categoryName.toString()}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.5,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Mansory',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              CategoryPageRoute(
                                  widget: ListWidget(
                                CatId: cat[index].id,
                                categoryName: cat[index].categoryName,
                              )));
                        },
                      );
                    },
                    itemCount: cat.length,
                  ),
                ),
              )
            ],
          );
        }

        //===========================================Landscape========================================================
        else {
          return Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(color: Colors.white,
                          //borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                spreadRadius: 2,
                                blurStyle: BlurStyle.inner,
                                color: Colors.white)
                          ]),
                      child: ImageSlideshow(
                        height: _mediaQuery2.size.height * 0.85,
                        width: _mediaQuery2.size.width * .34,
                        initialPage: 0,
                        indicatorRadius: 5,
                        indicatorColor: Colors.blue,
                        indicatorBackgroundColor: Colors.grey,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/images/bread.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/images/drinks.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/images/coffee.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                        autoPlayInterval: 3000,
                        isLoop: true,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 5, left: 4),
                  //   child: Container(
                  //       width: _mediaQuery2.size.width * .34,
                  //       height: 40,
                  //       child: FoodTypeWidget(
                  //         color: Colors.green,
                  //         color1: Colors.red,
                  //       )),
                  // ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15,top: 15),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 2),
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 250, 195, 113),
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 195,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(cat[index].image),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(.6),
                                        BlendMode.hardLight,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text.rich(
                                    TextSpan(
                                      text: cat[index].categoryName,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.5,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Mansory',
                                      ), // default text styl
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              CategoryPageRoute(
                                  widget: ListWidget(
                                CatId: cat[index].id,
                                categoryName: cat[index].categoryName,
                              )));
                        },
                      );
                    },
                    itemCount: cat.length,
                  ),
                ),
              ),
            ],
          );
        }
      })),
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
            FontAwesomeIcons.shoppingCart,size: 28,
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
