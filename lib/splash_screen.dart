import 'dart:async';

import 'package:dans_milk/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/dans_milk_logo.png'),
      ),
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  SplashScreen createState() => SplashScreen();
}
