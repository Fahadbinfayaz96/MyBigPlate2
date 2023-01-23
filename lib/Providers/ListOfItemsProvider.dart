// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mybigplate2/Models/ListOfItems.dart';
import 'package:mybigplate2/main.dart';
import 'package:mybigplate2/my_icons_icons.dart';

class ListOfItemsProvider with ChangeNotifier {
  List<ListOfItems> _item = [
    // Coffee

    ListOfItems(
        id: "l1",
        foodType: "veg",
        itemName: "Americano",
        description: "",
        Price: 125,
        halfPrice: 60,
        catId: "p1"),
    ListOfItems(
        id: "l2",
        foodType: "veg",
        itemName: "Cappuccino",
        description: "",
        Price: 146,
        halfPrice: 60,
        catId: "p1"),
    ListOfItems(
        id: "l3",
        foodType: "veg",
        itemName: "Espresso",
        description: "",
        Price: 79,
        halfPrice: 60,
        catId: "p1"),
    ListOfItems(
        id: "l4",
        foodType: "veg",
        itemName: "Double Espresso",
        description: "",
        Price: 114,
        halfPrice: 60,
        catId: "p1"),
    ListOfItems(
        id: "l5",
        foodType: "veg",
        itemName: "Latte",
        description: "",
        Price: 139,
        halfPrice: 60,
        catId: "p1"),
    ListOfItems(
        id: "l6",
        foodType: "veg",
        itemName: "Mocha",
        description: "",
        Price: 199,
        halfPrice: 60,
        catId: "p1"),

    ListOfItems(
        id: "l7",
        foodType: "veg",
        itemName: "Iced Americano",
        description: "",
        Price: 125,
        halfPrice: 60,
        catId: "p1"),

    //All Day Breakfast

    ListOfItems(
        id: "l8",
        foodType: "NonVeg",
        itemName: "Shakshouka",
        description:
            "A Mediterranean dish of eggs baked in a sauce of tomatoes, olive oil, peppers, onion & garlic in a iron pan",
        Price: 220,
        halfPrice: 60,
        catId: "p2"),

    ListOfItems(
        id: "l9",
        foodType: "NonVeg",
        itemName: "Full English",
        description:
            "Sunny side up eggs with fried sausages & salami with grilled tomatoes, mushrooms & bread",
        Price: 367,
        halfPrice: 60,
        catId: "p2"),

    ListOfItems(
        id: "l10",
        foodType: "NonVeg",
        itemName: "American",
        description:
            "Scrambled eggs with mushrooms, pancakes with honey, sauteed veggies & garlic bread",
        Price: 419,
        halfPrice: 60,
        catId: "p2"),

// Sandwich

    ListOfItems(
        id: "l11",
        foodType: "veg",
        itemName: "Tomato Cheese Melt",
        description:
            "A classic American lunch, melting cheese fusing with farm fresh tomatoes & salads lined with spicy mayo",
        Price: 262,
        halfPrice: 60,
        catId: "p3"),

    ListOfItems(
        id: "l12",
        foodType: "NonVeg",
        itemName: "Classic Giant Club",
        description:
            "A ruminant of a British club life still sandwiched here, a fried egg & chicken stacked with lettuce, farm fresh salads & cheese",
        Price: 304,
        halfPrice: 60,
        catId: "p3"),

    ListOfItems(
        id: "l13",
        foodType: "veg",
        itemName: "Hummus Tahini",
        description:
            "Lined with rich hummus & blended with spices & tahini, stacked with lettuce, pickled salads & cheese",
        Price: 283,
        halfPrice: 60,
        catId: "p3"),

    ListOfItems(
        id: "l14",
        foodType: "NonVeg",
        itemName: "Chicken Salami",
        description:
            "Grilled salami sandwiched with salad greens lined with spicy mayo, chicken fused with melting cheese",
        Price: 314,
        halfPrice: 60,
        catId: "p3"),

//Blended Smoothies

    ListOfItems(
        id: "l15",
        foodType: "veg",
        itemName: "Four Fruit Smoothie",
        description: "",
        Price: 251,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l16",
        foodType: "veg",
        itemName: "Tropical Fruit Smoothie",
        description: "",
        Price: 251,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l17",
        foodType: "veg",
        itemName: "Cinnamon Date Shake",
        description: "",
        Price: 220,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l18",
        foodType: "veg",
        itemName: "Classic Vanilla Shake",
        description: "",
        Price: 178,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l19",
        foodType: "veg",
        itemName: "Classic Strawberry",
        description: "",
        Price: 178,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l20",
        foodType: "veg",
        itemName: "Classic Chocolate",
        description: "",
        Price: 178,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l21",
        foodType: "veg",
        itemName: "Classic Banana",
        description: "",
        Price: 188,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l22",
        foodType: "veg",
        itemName: "Fresh Mango And Vanilla",
        description: "",
        Price: 209,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l23",
        foodType: "veg",
        itemName: "Banana Strawberry",
        description: "",
        Price: 209,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l24",
        foodType: "veg",
        itemName: "Banana Guava",
        description: "",
        Price: 209,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l25",
        foodType: "veg",
        itemName: "Banana Kiwi",
        description: "",
        Price: 209,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l26",
        foodType: "veg",
        itemName: "Peanut Butter Shake",
        description: "",
        Price: 199,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l27",
        foodType: "veg",
        itemName: "Peanut Butter Banana",
        description: "",
        Price: 209,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l28",
        foodType: "veg",
        itemName: "Peanut Butter Kitkat Oreo",
        description: "",
        Price: 241,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l29",
        foodType: "veg",
        itemName: "Kitkat Oreo Shake",
        description: "",
        Price: 199,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l30",
        foodType: "veg",
        itemName: "Doubles Kitkat Oreo Shake",
        description: "",
        Price: 262,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l31",
        foodType: "veg",
        itemName: "Ferrero Rocher Shake",
        description: "",
        Price: 272,
        halfPrice: 60,
        catId: "p4"),

    ListOfItems(
        id: "l32",
        foodType: "veg",
        itemName: "Brownie Shake",
        description: "",
        Price: 209,
         halfPrice: 60,
        catId: "p4"),

    //Pizza
    ListOfItems(
        id: "l33",
        foodType: "veg",
        itemName: "Small Margherita",
        description:
            "Italian classic cheesy speciality made with our valley's very own hawksun (sundried) tomatoes based on our be spoke tomato basil sauce",
        Price: 283,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l34",
        foodType: "NoVeg",
        itemName: "Small Grilled Salami",
        description:
            "The other classic Italian cheesy speciality for our nonveg loving patrons, simply grilled chicken salami based on our be spoke tomato basil sauce",
        Price: 296,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l35",
        foodType: "NoVeg",
        itemName: "Small Breakfast Pizza",
        description:
            "Lined with our special BnB White sauce, scattered with exotic veggies, chicken sausages & salami and an egg baked over the pizza toppings, it makes for a perfect tummy filling healthy option",
        Price: 388,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l36",
        foodType: "NoVeg",
        itemName: "Small Hot Mexican",
        description:
            "All time favourite pizza, so spicy it will make your nose run, based with our hot chilli sauce, scattered with chunks of grilled peri peri chicken, bell peppers, onions, olives and jalapenos",
        Price: 419,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l37",
        foodType: "NoVeg",
        itemName: "Large Breakfast Pizza",
        description:
            "Lined with our special BnB White sauce , scattered with exotic veggies, chicken sausages & salami and an egg baked over the pizza toppings, it makes for a perfect tummy filling healthy option",
        Price: 556,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l38",
        foodType: "NoVeg",
        itemName: "Small Grilled Chicken",
        description:
            "Based on a spicy tangy sauce, scattered grilled chunks of juicy chicken between rings of onions and long sliced colourful bell peppers, making it one of our most popular pizzas",
        Price: 367,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l39",
        foodType: "NoVeg",
        itemName: "Small Tex Mex",
        description:
            "Based on our tangy tomato sauce and a hint of the spicy hot chilli, scattered with chunks of peri peri chicken, bell peppers, onions, and dry Kashmiri chillis to give that south American pop n spice",
        Price: 325,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l40",
        foodType: "veg",
        itemName: "Small Veggie Delight",
        description:
            "Time to eat all your veggies son! loaded with all the veggies we love : broccoli, zucchini, bell peppers, baby corn, mushrooms, beans, onions, tomatoes & american corn backed by our be spoke tomato sauce",
        Price: 419,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l41",
        foodType: "NonVeg",
        itemName: "Large Grilled Salami",
        description:
            "The other classic Italian cheesy specialty for our non veg loving patrons, simply grilled chicken salamis based on our be spoke tomato basil sauce",
        Price: 516,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l42",
        foodType: "veg",
        itemName: "Small Paneer Extravaganza",
        description:
            "Based on a spicy tangy sauce, scattered grilled chunks of juicy paneer between rings of onions and long sliced colourful bell peppers , making it one of our most popular pizzas",
        Price: 314,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l43",
        foodType: "NoVeg",
        itemName: "Large Hot Mexican",
        description:
            "All time favourite pizza, so spicy it will make your nose run, based with our hot chilli sauce , scattered with chunks of grilled peri peri chicken, bell peppers, onions, olives and jalapenos",
        Price: 524,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l44",
        foodType: "NoVeg",
        itemName: "Large Tex Mex",
        description:
            "Based on our tangy tomato sauce and a hint of the spicy hot chilli, scattered with chunks of peri peri chicken, bell peppers, onions, and dry Kashmiri chillis to give that south American pop n spice",
        Price: 524,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l45",
        foodType: "veg",
        itemName: "Small Hummus Zucchini",
        description:
            "Our very own invention of alavass a thin pizza base lined with creamy flavoured hummus covered with butter grilled slices of zucchini, perfect for our health conscious patrons",
        Price: 314,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l46",
        foodType: "NonVeg",
        itemName: "Small Keema Lamb",
        description:
            "Our favourite discovery from a tiny Italian village, a lava ss a thin base with a rich tomato basil keema sauce, topped with fresh coriander and chopped green chilli estoentice our pallet",
        Price: 524,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l47",
        foodType: "veg",
        itemName: "Small Veggie Special",
        description:
            "Loaded with mushrooms, baby corn, beans, zucchini, broccoli, corn and onions lightly grilled in butter",
        Price: 325,
         halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l48",
        foodType: "NonVeg",
        itemName: "Small Chicken Special",
        description:
            "Loaded with mushrooms, baby corn, beans, zucchini, broccoli, corn and scattered with chicken and sausages lightly grilled in butter",
        Price: 419,halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l49",
        foodType: "NonVeg",
        itemName: "Small Lamb Special",
        description:
            "Grilled chunks of marinated lamb with bell peppers and onions",
        Price: 524,halfPrice: 60,
        catId: "p5"),

    ListOfItems(
        id: "l50",
        foodType: "veg",
        itemName: "Large Margherita",
        description:
            "Italian classic cheesy speciality made with our valley's very own hawkan (sundried) tomatoes based on our be spoke tomato basil sauce",
        catId: "p5",
        Price: 493,halfPrice: 60,),

    ListOfItems(
        id: "l51",
        foodType: "NonVeg",
        itemName: "Large Grilled Chicken",
        description:
            "Based on a spicy tangy sauce , scattered grilled chunks of juicy chicken between rings of onions and long sliced colourful bell peppers , making it one of our most popular pizzas",
        catId: "p5",halfPrice: 60,
        Price: 524),

    ListOfItems(
        id: "l52",
        foodType: "veg",
        itemName: "Large Veggie Delight",
        description:
            "Time to eat all your veggies son! loaded with all the veggies we love : broccoli, zucchini, bell peppers, baby corn, mushrooms, beans, onions, tomatoes & american corn backed by our be spoke tomato sauce",
        catId: "p5",halfPrice: 60,
        Price: 524),

    ListOfItems(
        id: "l53",
        foodType: "veg",
        itemName: "Large Paneer Extravaganza",
        description:
            "Based on a spicy tangy sauce , scatte red grilled chunks of juicy paneer be tween rings of onions and long sliced colourful bell peppers , making it one of our most popular pizzas",
        catId: "p5",halfPrice: 60,
        Price: 493),

    ListOfItems(
        id: "l53",
        foodType: "veg",
        itemName: "Large Hummus Zucchini",
        description:
            "our very own invention of alavass a thin pizza base lined with creamy flavoured hummus covered with butter grilled slices of zucchini, perfect for our health conscious patrons",
        catId: "p5",halfPrice: 60,
        Price: 419),

    ListOfItems(
        id: "l54",
        foodType: "NonVeg",
        itemName: "Large Keema Lamb",
        description:
            "Our favourite discovery from a tiny Italian village , a lava ss a thin base with a rich tomato basilkeema sauce, topped with fresh coriander and chopped green chilli estoentice our pallet",
        catId: "p5",halfPrice: 60,
        Price: 734),

    ListOfItems(
        id: "l55",
        foodType: "NonVeg",
        itemName: "Large Chicken Special",
        description:
            "Loaded with mushrooms, baby corn, beans, zucchini, broccoli, corn and scattered with chicken and sausages lightly grilled in butter",
        Price: 629,halfPrice: 60,
        catId: 'P5'),

    ListOfItems(
        id: "l56",
        foodType: "veg",
        itemName: "Large Veggie Special",
        description:
            "Loaded with mushrooms, baby corn, beans, zucchini, broccoli, corn and onions lightly grilled in butter",
        catId: "p5",halfPrice: 60,
        Price: 524),

    ListOfItems(
        id: "l57",
        foodType: "NonVeg",
        itemName: "Large Lamb Special",
        description:
            "Grilled chunks of marinated lamb with bell peppers and onions",
        catId: "p5",halfPrice: 60,
        Price: 734),

    //Wraps
    ListOfItems(
        id: "l58",
        foodType: "veg",
        itemName: "Peri Peri",
        description:
            "Crunchy bellpeppers & onions with spicy chunks of chicken tossed with our legendary peri peri sauce",
        catId: "p6",halfPrice: 60,
        Price: 283),

    ListOfItems(
        id: "l59",
        foodType: "NonVeg",
        itemName: "Fries & Meatball",
        description:
            "Grilled mutton & crispy fries tossed in a spicy tangy sauce, it's that ridiculously yummy 3 am fix we invented ours",
        catId: "p6",halfPrice: 60,
        Price: 367),

    ListOfItems(
        id: "l60",
        foodType: "veg",
        itemName: "Messy Paneer",
        description:
            "Be ready to dirty your hands as you dig into this bulging, juice dripping wrap",
        catId: "p6",halfPrice: 60,
        Price: 272),

    ListOfItems(
        id: "l61",
        foodType: "veg",
        itemName: "Falafel Hummus",
        description:
            "Fluffy fried falafel coated with hummus & wrapped with pickled cucumbers, tomatoes & onions",
        catId: "p6",halfPrice: 60,
        Price: 262),

    ListOfItems(
        id: "l62",
        foodType: "veg",
        itemName: "Hummus Salad",
        description:
            "Hummus tahini accompanied with tangy spiced salads & pickled greens",
        catId: "p6",halfPrice: 60,
        Price: 262),

    //Platter

    ListOfItems(
        id: "l63",
        foodType: "NonVeg",
        itemName: "Fiery Chicken",
        description:
            "Grilled chicken breast cooked in a rich tomato chili sauce served with sauted exotic veggies and a cake of mashed potatoes",
        catId: "p7",halfPrice: 60,
        Price: 577),

    ListOfItems(
        id: "l64",
        foodType: "NonVeg",
        itemName: "Keto Platter",
        description:
            "200 gms of pure grilled protein (chicken breast) with sauted veggies and side of hummus",
        catId: "p7",halfPrice: 60,
        Price: 524),

    ListOfItems(
        id: "l65",
        foodType: "NonVeg",
        itemName: "Mexican Chicken",
        description:
            "Marinated overnight in a green chilli paste, grilled and cooked soft in a mint coriander sauce and finished with black pepper served with exotic veggies and a cake of mashed potatoes",
        catId: "p7",halfPrice: 60,
        Price: 629),

    ListOfItems(
        id: "l66",
        foodType: "NonVeg",
        itemName: "Grilled Fish",
        description:
            "Grilled fish cooked in a rich tomato sauce with a burst of basil and rosemary and a hit of hot chilli sauce served with a bed of sauted exotic veggies",
        catId: "p7",halfPrice: 60,
        Price: 682),

    ListOfItems(
        id: "l67",
        foodType: "NonVeg",
        itemName: "Fish & Chips",
        description:
            "Copied straight from the kitchens of London, weare putting our best fish forward so your taste buds can go around the world!",
        Price: 629,halfPrice: 60,
        catId: 'p7'),

    //Drinks
    ListOfItems(
        id: "l68",
        foodType: "veg",
        itemName: "Bottled Water",
        description: "",
        Price: 20,halfPrice: 60,
        catId: 'p8'),

    ListOfItems(
        id: "l69",
        foodType: "veg",
        itemName: "Aerated Drinks",
        description: "",
        Price: 49,halfPrice: 60,
        catId: 'p8'),

    //Hot Chocolate

    ListOfItems(
        id: "l70",
        foodType: "veg",
        itemName: "Classic Hot Chocolate",
        description: "",
        Price: 157,halfPrice: 60,
        catId: 'p9'),

    ListOfItems(
        id: "l71",
        foodType: "veg",
        itemName: "Salted Caramel Hot Chocolate",
        description: "",
        Price: 167,halfPrice: 60,
        catId: 'p9'),

    ListOfItems(
        id: "l72",
        foodType: "veg",
        itemName: "Mocha Hot Chocolate",
        description: "",
        Price: 178,halfPrice: 60,
        catId: 'p9'),

    //Classic Teas

    ListOfItems(
        id: "l73",
        foodType: "veg",
        itemName: "Green Tea",
        description: "",
        Price: 95,halfPrice: 60,
        catId: "p10"),

    ListOfItems(
        id: "l74",
        foodType: "veg",
        itemName: "Lemon Tea",
        description: "",
        Price: 95,halfPrice: 60,
        catId: "p10"),

    ListOfItems(
        id: "l75",
        foodType: "veg",
        itemName: "Lemon Ginger Honey Tea",
        description: "",
        Price: 187,halfPrice: 60,
        catId: "p10"),

    ListOfItems(
        id: "l76",
        foodType: "veg",
        itemName: "Lemon Iced Tea",
        description: "",
        Price: 104,halfPrice: 60,
        catId: "p10"),

    ListOfItems(
        id: "l77",
        foodType: "veg",
        itemName: "Lemon Mint Iced Tea",
        description: "",
        Price: 125,halfPrice: 60,
        catId: "p10"),

    ListOfItems(
        id: "l78",
        foodType: "veg",
        itemName: "Peach Iced Tea",
        description: "",
        Price: 135,halfPrice: 60,
        catId: "p10"),

    //Fresh Juice And Blends

    ListOfItems(
        id: "l79",
        foodType: "veg",
        itemName: "Pineapple",
        description: "",
        Price: 209,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l80",
        foodType: "veg",
        itemName: "Apple",
        description: "",
        Price: 209,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l81",
        foodType: "veg",
        itemName: "Watermelon",
        description: "",
        Price: 209,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l82",
        foodType: "veg",
        itemName: "Orange",
        description: "",
        Price: 209,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l83",
        foodType: "veg",
        itemName: "Apple And Kiwi",
        description: "",
        Price: 220,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l84",
        foodType: "veg",
        itemName: "Orange And Pineapple",
        description: "",
        Price: 220,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l85",
        foodType: "veg",
        itemName: "Watermelon And Apple",
        description: "",
        Price: 220,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l86",
        foodType: "veg",
        itemName: "Orange And Carrot",
        description: "",
        Price: 220,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l87",
        foodType: "veg",
        itemName: "Fresh Lime Soda",
        description: "",
        Price: 136,halfPrice: 60,
        catId: "p11"),

    ListOfItems(
        id: "l88",
        foodType: "veg",
        itemName: "Minty Mojito",
        description: "",
        Price: 157,halfPrice: 60,
        catId: "p11"),

    //==========Teas===================

    ListOfItems(
        id: "l89",
        foodType: "veg",
        itemName: "Mystical Assam",
        description:
            "A black tea brew with a unique aroma, creamy texture and a sweet buttery overlay",
        Price: 125,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l90",
        foodType: "veg",
        itemName: "Spice Carnival",
        description:
            "A fusion of Assam Tea anchored to Cinnamon, Cardamon and Cloves",
        Price: 145,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l91",
        foodType: "veg",
        itemName: "Ebony Mealnge",
        description:
            "Robust flavours of black tea come together in savoury characters and deep undertones",
        Price: 145,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l92",
        foodType: "veg",
        itemName: "Oriental Green",
        description: "Very light green tea in a cup",
        Price: 125,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l93",
        foodType: "veg",
        itemName: "Honey Limon",
        description:
            "Smooth and mellow green tea infused with pure honey and refreshing lemons",
        Price: 145,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l94",
        foodType: "veg",
        itemName: "Magical Mint",
        description:
            "Characteristically intense flavours of mint blend beautifully with mellow a stringency of green tea",
        Price: 145,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l95",
        foodType: "veg",
        itemName: "Apple Strudel ",
        description:
            "Expressive blend of apple and hibiscus, fruity with a delicious creamy after taste",
        Price: 165,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l96",
        foodType: "veg",
        itemName: "Blood Orange ",
        description:
            "Rich, hearty and tangy with a deep vibrant colour and sweet flavour paired with hibiscus and rosehip",
        Price: 165,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l97",
        foodType: "veg",
        itemName: "Strawberry Lime ",
        description:
            "Sweet taste of ripe strawberries and refreshing citrus taste of fresh limes",
        Price: 165,halfPrice: 60,
        catId: "p12"),

    ListOfItems(
        id: "l98",
        foodType: "veg",
        itemName: "Lemon Cake",
        description:
            "A full bodied base, this indulgent infusion gives hints of fresh orange leaf and lemon grass",
        catId: "p12",halfPrice: 60,
        Price: 165),

    //=======Bread============

    ListOfItems(
        id: "l99",
        foodType: "veg",
        itemName: "Garlic Bread",
        description: "",
        catId: "p13",halfPrice: 60,
        Price: 209),

    ListOfItems(
        id: "l100",
        foodType: "veg",
        itemName: "Cheesy Garlic Bread",
        description: "",
        catId: "p13",halfPrice: 60,
        Price: 241),

    ListOfItems(
        id: "l101",
        foodType: "veg",
        itemName: "Jalapeno Olive Cheesy Garlic Bread",
        description: "",
        catId: "p13",halfPrice: 60,
        Price: 293),

//=========Smoothies==============

    ListOfItems(
        id: "l102",
        foodType: "veg",
        itemName: "Anti Inflammatory",
        description:
            "Pineapple, mongo, banana, orange, yogurt, a hint of turmeric",
        catId: "p14",halfPrice: 60,
        Price: 188),

    ListOfItems(
        id: "l103",
        foodType: "veg",
        itemName: "Increased Energy",
        description: "Grapes, spinach, lime",
        catId: "p14",halfPrice: 60,
        Price: 178),

    ListOfItems(
        id: "l104",
        foodType: "veg",
        itemName: "Detox",
        description:
            "Blueberries, banana, almond milk, almond butter, hemp seeds",
        catId: "p14",halfPrice: 60,
        Price: 262),

    ListOfItems(
        id: "l105",
        foodType: "veg",
        itemName: "Refreshing Plus",
        description: "Mango, banana, lime, mint, coconut milk",
        catId: "p14",halfPrice: 60,
        Price: 209),

    ListOfItems(
        id: "l106",
        foodType: "veg",
        itemName: "Flat Belly Maker",
        description: "Banana, oatmeal, almond milk, vanilla extract",
        catId: "p14",halfPrice: 60,
        Price: 230),

    ListOfItems(
        id: "l107",
        foodType: "veg",
        itemName: "Better Heart",
        description: "lime, celery, cucumber, red bellpepper, tomatoes",
        catId: "p14",halfPrice: 60,
        Price: 241),

    ListOfItems(
        id: "l108",
        foodType: "veg",
        itemName: "Fat Fighter",
        description: "Kiwi, banana, cucumber, spinach",
        catId: "p14",halfPrice: 60,
        Price: 209),

    ListOfItems(
        id: "l109",
        foodType: "veg",
        itemName: "Fittness Guru",
        description: "Apple ,pineapple ,cucumbr, spinach, mint",
        catId: "p14",halfPrice: 60,
        Price: 241),

    // Salads

    ListOfItems(
        id: "l110",
        foodType: "veg",
        itemName: "Veg Seasonal Fresh Fruit Salad",
        description:
            "Can't miss the crunchiness of fresh fruits with this bowl of healthy yummies",
        catId: "p15",halfPrice: 60,
        Price: 289),

    ListOfItems(
        id: "l111",
        foodType: "veg",
        itemName: "Veg Walnut Fruit Salad",
        description:
            "Your brains are gonna be blown away, restock them with this nutty one",
        catId: "p15",halfPrice: 60,
        Price: 346),

    ListOfItems(
        id: "l112",
        foodType: "veg",
        itemName: "Veg Lettuce & Dry Fruit Salad",
        description:
            "Let us mix the best of both worlds, crunchy greens & crisp roasted dry fruits",
        catId: "p15",halfPrice: 60,
        Price: 304),

    ListOfItems(
        id: "l113",
        foodType: "veg",
        itemName: "Veg Ceaser Salad",
        description:
            "Et tu Brutus? This is for you then Ceaser! with or without a chicken breast",
        catId: "p15",halfPrice: 60,
        Price: 346),

    ListOfItems(
        id: "l114",
        foodType: "veg",
        itemName: "Veg Roman Lettuce",
        description:
            "Want to be Roman, with or without shredded grilled chicken & a boiled egg",
        catId: "p15",halfPrice: 60,
        Price: 299),

    ListOfItems(
        id: "l115",
        foodType: "NonVeg",
        itemName: "Non Veg Ceaser Salad",
        description:
            "Et tu Brutus? This is for you then Ceaser! with or without a chicken breast",
        catId: "p15",halfPrice: 60,
        Price: 461),

    ListOfItems(
        id: "l116",
        foodType: "NonVeg",
        itemName: "Non Veg Roman Lettuce",
        description:
            "Want to be Roman, with or without shredded grill ed chicken & a boiled egg",
        catId: "p15",halfPrice: 60,
        Price: 349),

    //=========Soup==================

    ListOfItems(
        id: "l117",
        foodType: "veg",
        itemName: "Veg Mushroom Soup",
        description:
            "A thick creamy soup simply laden with love & a hint of thyme",
        catId: "p16",halfPrice: 60,
        Price: 209),

    ListOfItems(
        id: "l118",
        foodType: "NonVeg",
        itemName: "Non Veg Mushroom Soup",
        description:
            "A thick creamy soup simply laden with love & a hint of thyme",
        catId: "p16",halfPrice: 60,
        Price: 262),

    //======================Pancakes And Waffles=======

    ListOfItems(
        id: "l119",
        foodType: "veg",
        itemName: "Pan Cake Lemon And Honey",
        description: "A classic, served with a melting cube of butter",
        catId: "p17",halfPrice: 60,
        Price: 157),

    ListOfItems(
        id: "l120",
        foodType: "veg",
        itemName: "Pan Cake Chocolate Tooth",
        description:
            "Lavishly laden with Nutella & dressed with Hersheys chocolate syrup",
        catId: "p17",halfPrice: 60,
        Price: 314),

    ListOfItems(
        id: "l121",
        foodType: "veg",
        itemName: "Pan Cake Verry Berry One",
        description:
            "Topped with berries & crush, lets see which berry comes right at the top",
        catId: "p17",halfPrice: 60,
        Price: 209),

    ListOfItems(
        id: "l122",
        foodType: "veg",
        itemName: "Pan Cake Opposites Attract",
        description:
            "A romance between the simple banana & the raunchy berries",
        catId: "p17",halfPrice: 60,
        Price: 209),

    ListOfItems(
        id: "l123",
        foodType: "veg",
        itemName: "Pan Cake Strawberry One",
        description: "",
        catId: 'p17',halfPrice: 60,
        Price: 157),

    ListOfItems(
        id: "l124",
        foodType: "veg",
        itemName: "Pan Cake Blueberry One",
        description: "",
        catId: 'p17',halfPrice: 60,
        Price: 157),

    ListOfItems(
        id: "l125",
        foodType: "veg",
        itemName: "Waffles Lemon And Honey",
        description: "",
        catId: 'p17',halfPrice: 60,
        Price: 262),

    ListOfItems(
        id: "l126",
        foodType: "veg",
        itemName: "Waffles Chocolate Tooth",
        description: "",
        catId: 'p17',halfPrice: 60,
        Price: 419),

    ListOfItems(
        id: "l127",
        foodType: "veg",
        itemName: "Waffles Verry Berry One",
        description: "",
        catId: 'p17',halfPrice: 60,
        Price: 314),

    ListOfItems(
        id: "l128",
        foodType: "veg",
        itemName: "Waffles Opposites Attract",
        description: "",
        catId: 'p17',halfPrice: 60,
        Price: 314),

    ListOfItems(
        id: "l129",
        foodType: "veg",
        itemName: "Waffles Strawberry One",
        description: "",
        catId: 'p17',halfPrice: 60,
        Price: 262),

    ListOfItems(
        id: "l130",
        foodType: "veg",
        itemName: "Waffles Blueberry One",
        description: "",
        catId: 'p17',halfPrice: 60,
        Price: 262),

    //=========Time Killing Snacks============

    ListOfItems(
        id: "l131",
        foodType: "veg",
        itemName: "French Fries",
        description: "Impersonating the Belgian fries these little yummy",
        catId: 'p18',halfPrice: 60,
        Price: 209),

    ListOfItems(
        id: "l132",
        foodType: "veg",
        itemName: "Potato Wedges",
        description: "",
        catId: 'p18',halfPrice: 60,
        Price: 209),

    ListOfItems(
        id: "l133",
        foodType: "veg",
        itemName: "Garlic Fries",
        description: "Try it, eat just one, we challenge",
        catId: 'p18',halfPrice: 60,
        Price: 241),

    ListOfItems(
        id: "l134",
        foodType: "veg",
        itemName: "Cheesy Fries",
        description: "So cheesy you will fall for it",
        catId: 'p18',halfPrice: 60,
        Price: 304),

    ListOfItems(
        id: "l135",
        foodType: "veg",
        itemName: "Chessy Wedges",
        description: "So cheesy you will fall for it",
        catId: 'p18',halfPrice: 60,
        Price: 304),

    ListOfItems(
        id: "l136",
        foodType: "veg",
        itemName: "Tomato Honey Chilli Fries",
        description:
            "Shockingly spicy & soothingly sweet combination that will leave you asking for more",
        catId: 'p18',halfPrice: 60,
        Price: 314),

    ListOfItems(
        id: "l137",
        foodType: "veg",
        itemName: "Tomato Honey Chilli Wedges",
        description:
            "Shockingly spicy & soothingly sweet combination that will leave you asking for more",
        catId: 'p18',halfPrice: 60,
        Price: 314),

    ListOfItems(
        id: "l138",
        foodType: "veg",
        itemName: "Nachos Veg",
        description:
            "Nachoo saare cheer phaad ke ! drown in the creamy cheese sauce with the crunch of nachoes and diced vegetables",
        catId: 'p18',halfPrice: 60,
        Price: 314),

    ListOfItems(
        id: "l139",
        foodType: "NonVeg",
        itemName: "Nachos Non Veg",
        description:
            "Nachoo saare cheer phaad ke ! drown in the creamy cheese sauce with the crunch of nachoes and diced vegetables",
        catId: 'p18',halfPrice: 60,
        Price: 419),

    // ==============Burger=========================

    ListOfItems(
        id: "l140",
        foodType: "NonVeg",
        itemName: "Peri Peri Chicken",
        description:
            "Our be spoke specialty, a full chicken breast, marinated over night & grilled to a glazed perfection with farm fresh salads & cheese",
        catId: 'p19',halfPrice: 60,
        Price: 419),

    ListOfItems(
        id: "l141",
        foodType: "NonVeg",
        itemName: "Crunchy Chicken",
        description:
            "A juicy chicken breast deep fried for a cruchy exterior stacked with farm fresh salads & cheese",
        catId: 'p19',halfPrice: 60,
        Price: 314),

    ListOfItems(
        id: "l142",
        foodType: "NonVeg",
        itemName: "Grilled Chicken",
        description:
            "A scrumptious version of the peri peri, with a grilled salami welded in with cheese to the grilled chicken breast complimented with the farm fresh salads & cheese",
        catId: 'p19',halfPrice: 60,
        Price: 419),

    ListOfItems(
        id: "l143",
        foodType: "veg",
        itemName: "Grilled Veggie",
        description:
            "A handmade patty of exotic veggies, potatoes, & spices, stacked with farm fresh salads & cheese",
        Price: 314,halfPrice: 60,
        catId: 'p19'),

    ListOfItems(
        id: "l144",
        foodType: "veg",
        itemName: "Crunchy Falafel",
        description:
            "Handmade patty of fluffy falflfred & sandwiched with pickled salads, cheese, a must try for veggie love",
        Price: 314,halfPrice: 60,
        catId: 'p19'),

    ListOfItems(
        id: "l145",
        foodType: "NonVeg",
        itemName: "Lamb Pounder", //wrong
        description:
            "A recipe straight from the 'hole-in-the-wall' burger joints of London, ste of nostagia we still can't getover. Minced lamb marinated overnight, grilled to a charred juicy perfection, complimented with caramelized onions fused with melting cheese",
        Price: 525,halfPrice: 60,
        catId: 'p19'),

    //=============Pasta===============================

    ListOfItems(
        id: "l146",
        foodType: "veg",
        itemName: "Pasta",
        description:
            "prepared with light olive oil with veggies, chicken seasoned with just garlic & oregano sprinkled with cheese & chilli flakes served with garlic bread",
        Price: 230,halfPrice: 60,
        catId: 'p20'),

    ListOfItems(
        id: "l147",
        foodType: "veg",
        itemName: "Veg Creamy Alfredo",
        description:
            "A thick Alfredo sauce infused with thyme and garlic , conspicuously scattered penne in the rich creamy sauce with veggies ,chicken served with garlic bread",
        Price: 367,halfPrice: 60,
        catId: 'p20'),

    ListOfItems(
        id: "l148",
        foodType: "veg",
        itemName: "Veg Marinara",
        description:
            "Penne pasta tossed in our be spoke tomato sauce generously scattered with veggies or chicken with the explosive flavours of thyme , basil, and the tangy tomatoes of the valley sprinkled with cheese & served with garlic bread",
        Price: 262,halfPrice: 60,
        catId: 'p20'),

    ListOfItems(
        id: "l149",
        foodType: "veg",
        itemName: "Veg Rosy Carbonara ",
        description:
            "Can't make up your mind between the creamy and the tangy marina rayou can enjoy both their yummy flavours, penne pasta tossed in rosy pink creamy sauce with veggies/ chicken served with garlic bread",
        Price: 367,halfPrice: 60,
        catId: 'p20'),

    ListOfItems(
        id: "l150",
        foodType: "veg",
        itemName: "Veg Spaghetti Bolognese",
        description:
            "Our newest addition, spaghetti tossed in a tangy tomato sauce infused with basil and oregano and topped with minced mutton/paneer",
        Price: 367,halfPrice: 60,
        catId: 'p20'),


          ListOfItems(
        id: "l151",
        foodType: "NonVeg",
        itemName: "Non Veg Aglio Olio", 
        description:
           "Prepared with light olive oil with non veggies ,chicken sea soned with just garlic & oregano sprinkled with cheese & chilli flakes served with garlic bread",
        Price: 283,halfPrice: 60,
        catId: 'p20'),


           ListOfItems(
        id: "l152",
        foodType: "NonVeg",
        itemName: "Non Veg Creamy Alfredo ",
        description:
           "A thick Alfredo sauce infused with thyme and garlic, conspicuously scattered penne in the rich creamy sauce with non veggies/ chicken served with garlic bread",
        Price: 419,halfPrice: 60,
        catId: 'p20'),


         ListOfItems(
        id: "l153",
        foodType: "NonVeg",
        itemName:"Non Veg Marinara", 
        description:
        "Penne pasta tossed in our be spoke tomato sauce generously scattered with non veggies or chicken with the explosive flavours of thyme, basil, and the tangy tomatoes of the valley sprinkled with cheese & served with garlic bread",
        Price: 314,halfPrice: 60,
        catId: 'p20'),


           ListOfItems(
        id: "l154",
        foodType: "NonVeg",
        itemName: "Non Veg Creamy Alfredo ",
        description:
        "A thick Alfredo sauce infused with thyme and garlic, conspicuously scattered penne in the rich creamy sauce with non veggies/ chicken served with garlic bread",
        Price: 419,halfPrice: 60,
        catId: 'p20'),


           ListOfItems(
        id: "l155",
        foodType: "NonVeg",
        itemName:"Non Veg Marinara", 
        description:
        "Penne pasta tossed in our be spoke tomato sauce generously scattered with non veggies or chicken with the explosive flavours of thyme, basil, and the tangy tomatoes of the valley sprinkled with cheese & served with garlic bread",
        Price: 314,halfPrice: 60,
        catId: 'p20'),


             ListOfItems(
        id: "l156",
        foodType: "NonVeg",
        itemName: "Non Veg Rosy Carbonara", 
        description:
         "Cant make up your mind between the creamy and the tangy marina rayou can enjoy both the ir yummy flavours, penne pasta tossed in rosy pink creamy sauce with non veggies/ chicken served with garlic bread",
        Price: 419,halfPrice: 60,
        catId: 'p20'),


             ListOfItems(
        id: "l157",
        foodType: "NonVeg",
        itemName: "Non Veg Spaghetti Bolognese", 
        description:
          "Our newest addition, spaghetti tossed in a tangy tomato sauce infused with basil and oregano and topped with minced mutton ,paneer",
        Price: 419,halfPrice: 60,
        catId: 'p20'),
  ];

  List<ListOfItems> get items {
    return [..._item];
  }
}
