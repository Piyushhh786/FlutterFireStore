// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_delivery/appwidget.dart';
import 'package:food_delivery/firebase_signin_upfunction.dart';
import 'package:food_delivery/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery/navigation_bar.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  List<bool> list = [false];
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String username = '';
  String password = '';
  String email = '';
  TrySubmit() async {
    bool isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      if (isLogin) {
        await signin(email, password);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          'login successfully',
          style: Appwidget.lightBoldTextStyle(),
        )));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomNavBar()));
      } else {
        await signup(
          email,
          password,
        );
        FirebaseAuth.instance.currentUser!.reload();
        if (FirebaseAuth.instance.currentUser!.emailVerified) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BottomNavBar()));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Email is not verify plzzverify it first',
                style: Appwidget.lightBoldTextStyle(),
              )));
        }

        // Future.delayed(Duration(seconds: 30));
      }
      print('valid form');
    } else {
      print('Not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Image.asset('images/LogoFoodDeliver.png')),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: w,
              height: h / 2,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(top: h / 3),
              width: w,
              height: h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
            ),
            SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(
                    left: 20, right: 20, top: h / 4.5, bottom: 30),
                // color: Colors.red,
                width: w,
                // height: h / 1.94,
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    children: [
                      Text(
                        isLogin ? 'Login' : 'SignUp',
                        style: Appwidget.boldTextStyle(),
                      ),
                      Form(
                          key: _formKey,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    !isLogin
                                        ? TextFormField(
                                            key: ValueKey('username'),
                                            decoration: InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.person_2_outlined,
                                                  color: Colors.black,
                                                ),
                                                hintStyle: Appwidget
                                                    .lightBoldTextStyle(),
                                                hintText: 'Enter Username'),
                                            validator: (value) {
                                              if (value.toString().isEmpty) {
                                                return 'Username should not be empty';
                                              } else
                                                return null;
                                              // username = value.toString();
                                            },
                                            onSaved: (newValue) {
                                              username = newValue.toString();
                                            },
                                          )
                                        : Container(),
                                    TextFormField(
                                      key: ValueKey('email'),
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email_outlined,
                                            color: Colors.black,
                                          ),
                                          hintStyle:
                                              Appwidget.lightBoldTextStyle(),
                                          hintText: 'Enter Email'),
                                      validator: (value) {
                                        // email = value.toString();
                                        if (value.toString().isEmpty) {
                                          return 'Email should not be empty';
                                        } else if (!(value
                                            .toString()
                                            .contains('@gmail.com'))) {
                                          return 'invalid mail';
                                        } else
                                          return null;
                                      },
                                      onSaved: (newValue) {
                                        email = newValue.toString();
                                      },
                                    ),
                                    TextFormField(
                                      obscureText: true,
                                      key: ValueKey('password'),
                                      decoration: InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.password_outlined),
                                          hintStyle:
                                              Appwidget.lightBoldTextStyle(),
                                          hintText: 'Enter Password'),
                                      validator: (value) {
                                        // password = value.toString();
                                        if (value.toString().length < 6)
                                          return 'password length should be more than six digit';
                                        else
                                          return null;
                                      },
                                      onSaved: (newValue) {
                                        password = newValue.toString();
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: double.infinity,
                                    height: 50,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          TrySubmit();
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStateProperty.all(
                                                    Color.fromARGB(
                                                        255, 0, 0, 0)),
                                            shape: WidgetStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0)))),
                                        child: Text(
                                          isLogin ? 'Login' : 'SignUp',
                                          style: Appwidget
                                              .whiteLessSizeboldTextStyle(),
                                        ))),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: h - 400),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: Text(
                    isLogin
                        ? "Don't Have an Account?Signup here"
                        : 'Have an account?Login here',
                    style: Appwidget.lessSizeboldTextStyle(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
