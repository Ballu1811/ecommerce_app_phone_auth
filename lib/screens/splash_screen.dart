import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_food_app/screens/home_screen.dart';
import 'package:new_food_app/screens/login_screen.dart';

class SplashInitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        }
        if (!snapshot.hasData || snapshot.data == null) {
          return LoginPage();
        } else if (snapshot.data.phoneNumber != null) {}
        return SplashScreen();
      },
    ));
  }
}

class SplashScreen extends StatefulWidget {
  static const id = '/SplashPage';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;
  @override
  void initState() {
    _timer = Timer(Duration(seconds: 3), () async {
      await Navigator.pushReplacementNamed(context, HomePage.id);
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset('images/logo1.jpg'),
          )),
          Text(
            "SHOPCART",
            style: TextStyle(fontSize: 30, fontFamily: 'roboto-bold'),
          ),
          Expanded(child: Center(child: CircularProgressIndicator())),
        ],
      ),
    );
  }
}
