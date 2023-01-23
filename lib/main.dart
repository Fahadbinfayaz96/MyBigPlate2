// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mybigplate2/Models/DialogBoxModel.dart';
import 'package:mybigplate2/Providers/CartProvider.dart';
import 'package:mybigplate2/Providers/CategoryProvider.dart';
import 'package:mybigplate2/Providers/ListOfItemsProvider.dart';
import 'package:provider/provider.dart';
import 'MainWidgets/Categories.dart';
import 'MainWidgets/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ListOfItemsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
          ChangeNotifierProvider(
          create: (context) => DailogBoxProvider(),
        )
      ],
      child: MaterialApp(
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(body: home(mediaQuery: _mediaQuery));
  }
}
