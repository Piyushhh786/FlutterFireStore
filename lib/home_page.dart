// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_brace_in_string_interps

// import 'dart:ffi';
// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:food_delivery/appwidget.dart';
import 'package:food_delivery/detailed_page.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ice_cream = true;
  bool salad = false;
  bool pizza = false;
  bool burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello Piyush,',
          style: Appwidget.boldTextStyle(),
        ),
        actions: [
          Container(
            // color: Colors.red,
            // padding: EdgeInsets.all(0),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Delicious Food',
                style: Appwidget.SizeBoldTextStyle(),
              ),
              Text(
                'Discover and Get Great Food',
                // textAlign: TextAlign.center,
                style: Appwidget.lightBoldTextStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              mannualItems(), //wrap
              SizedBox(
                height: 30,
              ),
              if (salad && !ice_cream && !burger && !pizza) ...[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailedPage(
                                      imagePath: 'images/salad2.png',
                                      name: 'MixVeg Salad',
                                      price: 28)));
                        },
                        child: Appwidget.SqCardsItems(
                            'images/salad2.png', 'MixVeg Salad', 28),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailedPage(
                                      imagePath: 'images/salad2.png',
                                      name: 'MixVeg Salad',
                                      price: 28)));
                        },
                        child: Appwidget.SqCardsItems(
                            'images/salad2.png', 'MixVeg Salad', 28),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailedPage(
                                      imagePath: 'images/salad2.png',
                                      name: 'MixVeg Salad',
                                      price: 28)));
                        },
                        child: Appwidget.SqCardsItems(
                            'images/salad2.png', 'MixVeg Salad', 28),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailedPage(
                                imagePath: 'images/salad2.png',
                                name: 'Mediterranean Chickpeo Salad',
                                price: 28)));
                  },
                  child: Appwidget.ListItems('images/salad2.png',
                      'Mediterranean Chickpeo Salad', 'Honey goot cheese', 28),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailedPage(
                                imagePath: 'images/salad2.png',
                                name: 'Mediterranean Chickpeo Salad',
                                price: 28)));
                  },
                  child: Appwidget.ListItems('images/salad2.png',
                      'Mediterranean Chickpeo Salad', 'Honey goot cheese', 28),
                ),
              ] else if (!salad && ice_cream && !burger && !pizza) ...[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Appwidget.SqCardsItems(
                          'images/ice-cream2.png', 'Chilled IceCream', 14),
                      Appwidget.SqCardsItems(
                          'images/ice-cream2.png', 'Chilled IceCream', 14),
                      Appwidget.SqCardsItems(
                          'images/ice-cream2.png', 'Chilled IceCream', 14),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Appwidget.ListItems('images/ice-cream2.png',
                    'Mediterranean Chickpeo Burger', 'Hot got Hot', 50),
                SizedBox(
                  height: 10,
                ),
                Appwidget.ListItems('images/ice-cream2.png',
                    'Mediterranean Chickpeo Burger', 'Hot got Hot', 50),
              ] else if (!salad && !ice_cream && burger && !pizza) ...[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Appwidget.SqCardsItems(
                          'images/burger2.png', 'Hot Burger', 50),
                      Appwidget.SqCardsItems(
                          'images/burger2.png', 'Hot Burger', 50),
                      Appwidget.SqCardsItems(
                          'images/burger2.png', 'Hot Burger', 50),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Appwidget.ListItems('images/ice-cream2.png',
                    'Mediterranean Chickpeo IceCream', 'Jelly milk sugar', 14),
                SizedBox(
                  height: 10,
                ),
                Appwidget.ListItems('images/ice-cream2.png',
                    'Mediterranean Chickpeo IceCream', 'Jelly milk sugar', 14),
              ] else ...[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Appwidget.SqCardsItems(
                          'images/pizza2.png', 'Sexy Pizza', 100),
                      Appwidget.SqCardsItems(
                          'images/pizza2.png', 'Sexy Pizza', 100),
                      Appwidget.SqCardsItems(
                          'images/pizza2.png', 'Sexy Pizza', 100),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Appwidget.ListItems('images/pizza2.png',
                    'Mediterranean Chickpeo Pizza', 'Honey goot cheese', 100),
                SizedBox(
                  height: 10,
                ),
                Appwidget.ListItems('images/pizza2.png',
                    'Mediterranean Chickpeo Pizza', 'Honey goot cheese', 100),
              ]
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView mannualItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // spacing: 35.0,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                ice_cream = true;
                burger = false;
                salad = false;
                pizza = false;
              });
            },
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(10),
              color: ice_cream
                  ? Colors.black
                  : Color.fromRGBO(250, 239, 255, 0.95),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'images/ice-cream.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: ice_cream ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                ice_cream = false;
                burger = false;
                salad = true;
                pizza = false;
              });
            },
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(10),
              color: salad ? Colors.black : Color.fromRGBO(250, 239, 255, 0.95),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'images/salad.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: salad ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                ice_cream = false;
                burger = false;
                salad = false;
                pizza = true;
              });
            },
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(10),
              color: pizza ? Colors.black : Color.fromRGBO(250, 239, 255, 0.95),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'images/pizza.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: pizza ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                ice_cream = false;
                burger = true;
                salad = false;
                pizza = false;
              });
            },
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(10),
              color:
                  burger ? Colors.black : Color.fromRGBO(250, 239, 255, 0.95),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'images/burger.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: burger ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
