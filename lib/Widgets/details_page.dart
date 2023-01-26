// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybigplate2/Widgets/CartWidget.dart';

class SingleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Page",
          style: TextStyle(
              fontFamily: "Mansory",
              fontSize: _mediaQuery.size.longestSide * .03),
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        SizedBox(
            height: 450,
            width: _mediaQuery.size.width,
            child: Image.asset(
              "assets/images/pasta.jpg",
              fit: BoxFit.fill,
            )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.cabin),
                      Text(
                        "Chicken Briyani",
                        style: TextStyle(
                            fontFamily: "Mansory",
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Description",
                      style: TextStyle(
                          fontFamily: 'Mansory',
                          fontWeight: FontWeight.w700,
                          fontSize: 18)),
                  SizedBox(
                    width: _mediaQuery.size.width * .78,
                    child: Text(
                      "Chicken Biryani is a delicious savory rice dish that is loaded with spicy marinated chicken, caramelized onions, and flavorful saffron rice. For my Biryani, I simplify the order of operations, while retaining the traditional layered approach to assembling it.",
                      style: TextStyle(
                          fontFamily: 'Mansory', fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Column(
                children: [
                  Text("100 RS",
                      style: TextStyle(fontFamily: "Mansory", fontSize: 15)),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
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
                context, MaterialPageRoute(builder: (context) => CartWidget()));
          },
          child: Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: Icon(
                FontAwesomeIcons.shoppingCart,
                size: 35,
                color: Colors.orange,
              ),
            ),
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
