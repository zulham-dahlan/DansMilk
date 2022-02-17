import 'package:dans_milk/common/style.dart';
import 'package:dans_milk/detail_screen.dart';
import 'package:dans_milk/milk.dart';
import 'package:dans_milk/widget/milk_pager.dart';

import 'package:dans_milk/widget/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: mainColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset('images/dans_milk_logo_text.png', width: 100,),
      ),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: Column(
        children: [
          MilkPager(),
          
        ],
      )
    );
  }
}
