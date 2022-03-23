import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_food_app/screens/home_screen.dart';
import 'package:new_food_app/screens/login_screen.dart';
import 'package:new_food_app/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'roboto-regular',
      ),
      home: SplashInitPage(),
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginPage.id: (context) => LoginPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
