// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class Appwidget {
  static TextStyle boldTextStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins');
  }

  static TextStyle SizeBoldTextStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins');
  }

  static TextStyle lightBoldTextStyle() {
    return const TextStyle(
        color: Color.fromARGB(142, 0, 0, 0),
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: 'Poppins');
  }

  static TextStyle lessSizeboldTextStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins');
  }

  static TextStyle whiteLessSizeboldTextStyle() {
    return const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins');
  }

  static Padding ListItems(String ImagePath, Name, DescriptionText, int Price) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              ImagePath,
              height: 90,
              width: 90,
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              width: 220,
              padding: EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Name,
                    style: Appwidget.lessSizeboldTextStyle(),
                    softWrap: true,
                  ),
                  Text(
                    DescriptionText,
                    style: Appwidget.lightBoldTextStyle(),
                  ),
                  Text(
                    '\$${Price}',
                    style: Appwidget.lessSizeboldTextStyle(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  static Container SqCardsItems(String ImagePath, Name, int Price) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          margin: EdgeInsets.only(right: 3, bottom: 20, left: 3),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Image.asset(
                ImagePath,
                height: 100,
                width: 100,
                // alignment: Alignment.center,
              ),
              Text(
                Name,
                style: Appwidget.lessSizeboldTextStyle(),
              ),
              Text(
                'Fresh and Healthy',
                style: Appwidget.lightBoldTextStyle(),
              ),
              Text(
                '\$${Price}',
                style: Appwidget.lessSizeboldTextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
