// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unnecessary_new, sized_box_for_whitespace

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybigplate2/Providers/CartProvider.dart';

import 'Categories.dart';

class home extends StatelessWidget {
  home({
    Key? key,
    required MediaQueryData mediaQuery,
  })  : _mediaQuery = mediaQuery,
        super(key: key);

  final MediaQueryData _mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(builder: (context) {
          //==================================Potrait=============================================================

          if (_mediaQuery.orientation == Orientation.portrait) {
            return Container(
              width: _mediaQuery.size.width * 1,
              height: _mediaQuery.size.height * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: _mediaQuery.size.height * .3,
                      width: _mediaQuery.size.width * .6,
                      child: Image.asset("assets/images/logowob.png")),
                  Image.asset("assets/images/homev.png"),
                  Text(
                    "Giving your Hunger new Options",
                    style: TextStyle(
                        fontFamily: "Mansory",
                        fontWeight: FontWeight.bold,
                        fontSize: _mediaQuery.size.width * .05),
                  ),
                  Text(""),
                ],
              ),
            );
          }

          //==================================Landscape=============================================================

          else {
            return Container(
              width: _mediaQuery.size.width * 1,
              height: _mediaQuery.size.width * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: _mediaQuery.size.height * .28,
                      child: Image.asset("assets/images/logowob.png")),
                  SizedBox(
                      width: _mediaQuery.size.width * .7,
                      height: _mediaQuery.size.height * .40,
                      child: Image.asset(
                        "assets/images/homev.png",
                        fit: BoxFit.fill,
                      )),
                  Text(
                    "Giving your Hunger new Options",
                    style: TextStyle(
                        fontFamily: "Mansory",
                        fontWeight: FontWeight.bold,
                        fontSize: 34),
                  ),
                  Text(""),
                  SizedBox(
                    height: 4,
                  )
                ],
              ),
            );
          }
        }),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38),
            boxShadow: [
              BoxShadow(
                  color: Colors.orange.shade200, spreadRadius: 3, blurRadius: 5)
            ]),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 10,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Categories(),
                ));
          },
          child: Icon(
            FontAwesomeIcons.arrowRight,
            color: Color.fromARGB(255, 246, 165, 59),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 120,
        child: BottomAppBar(
            color: Color.fromARGB(255, 242, 160, 52),
            shape: CircularNotchedRectangle(),
            notchMargin: 15,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Mansory",
                      fontSize: 20,
                    ),
                  ),
                ))),
      ),
    );
  }
}
