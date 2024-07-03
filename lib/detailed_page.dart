// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:food_delivery/appwidget.dart';

class DetailedPage extends StatefulWidget {
  final String? imagePath;
  final String? name;
  final int? price;
  const DetailedPage({super.key, this.imagePath, this.name, this.price});

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            // alignment: Alignment.bottomLeft,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.navigate_before,
              color: Colors.black,
              size: 35,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(
                child: Image.asset(
                  widget.imagePath!,
                  height: 300,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: double.infinity,
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 220,
                        child: Text(
                          widget.name!,
                          style: Appwidget.boldTextStyle(),
                          textAlign: TextAlign.start,
                          softWrap: true,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: Colors.black,
                              // size: 25,
                            ),
                            onPressed: () {
                              setState(() {
                                if (count != 0) count--;
                              });
                            },
                          ),
                          Text(
                            '${count}',
                            style: Appwidget.lessSizeboldTextStyle(),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                              // size: 25,
                            ),
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: Appwidget.lightBoldTextStyle(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '  Delivery Time ',
                    style: Appwidget.boldTextStyle(),
                  ),
                  Row(
                    children: [
                      Icon(Icons.alarm),
                      Text(
                        '  30 Min  ',
                        style: Appwidget.lessSizeboldTextStyle(),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: Appwidget.boldTextStyle(),
                    ),
                    Text(
                      '\$${widget.price}',
                      style: Appwidget.boldTextStyle(),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text(
                        'Add to cart ',
                        style: Appwidget.whiteLessSizeboldTextStyle(),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Icon icon() {
    return Icon(Icons.shopping_cart_outlined);
  }
}
