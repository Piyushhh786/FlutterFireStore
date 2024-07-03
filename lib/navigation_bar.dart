// import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:food_delivery/home_page.dart';
import 'package:food_delivery/order.dart';
import 'package:food_delivery/profile.dart';
import 'package:food_delivery/wallet.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIdx = 0;
  late List<Widget> pages = const [HomePage(), Order(), Wallet(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            setState(() {
              currentIdx = index;
            });
          },
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: const Color.fromRGBO(252, 245, 255, 0.949),
          color: Colors.black,
          // ,
          buttonBackgroundColor: Colors.black,
          items: const [
            Icon(
              Icons.home,
              color: Colors.grey,
            ),
            Icon(
              Icons.shopping_bag_sharp,
              color: Colors.grey,
            ),
            Icon(
              Icons.wallet,
              color: Colors.grey,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
            )
          ]),
      body: pages[currentIdx],
    );
  }
}
