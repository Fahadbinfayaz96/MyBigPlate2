// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FoodTypeWidget extends StatelessWidget {
  FoodTypeWidget({Key? key, required this.color, required this.color1})
      : super(key: key);
  MaterialColor color;
  MaterialColor color1;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery2 = MediaQuery.of(context);
    return Container(
      height: _mediaQuery2.size.height * .03,
      decoration: BoxDecoration(color: Color.fromARGB(255, 181, 177, 177)),
      child: Row(
        children: [
          SizedBox(
            width: 8,
          ),
          Container(
            height: 30,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 15,
                ),
                Text(
                  "Veg",
                  style: TextStyle(fontFamily: "Mansory"),
                )
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 30,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: color1,
                  radius: 15,
                ),
                Text(
                  " NonVeg",
                  style: TextStyle(fontFamily: "Mansory"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
