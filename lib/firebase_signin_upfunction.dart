import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:food_delivery/appwidget.dart';

signup(
  String email,
  String password,
) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    await userCredential.user!.sendEmailVerification();
  } catch (e) {
    print(e);
  }
}

signin(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuth catch (e) {
    print('${e}');
  }
}
