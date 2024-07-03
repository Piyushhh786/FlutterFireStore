import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/appwidget.dart';
import 'package:food_delivery/navigation_bar.dart';
import 'firebase_options.dart';
import 'signup_page.dart';
// import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.light, primaryColor: Colors.orange),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data!.emailVerified == true) {
              return const BottomNavBar();
            } else if (snapshot.hasData &&
                snapshot.data!.emailVerified == false) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.white,
                  content: Text(
                    'email not verified',
                    style: Appwidget.lightBoldTextStyle(),
                  )));
              return SignupPage();
            } else {
              return SignupPage();
            }
          },
        ));
  }
}
