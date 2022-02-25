import 'dart:async';

import 'package:dans_milk/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen()));
    });
    
    return Scaffold(
      body: Center(
        child: Image.asset('images/dans_milk_logo.png'),
      ),
    );
  }
}

