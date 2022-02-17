import 'package:dans_milk/milk.dart';
import 'package:flutter/material.dart';

import 'common/style.dart';

class DetailScreen extends StatelessWidget {
  Milk detailMilk;

  DetailScreen({this.detailMilk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            child: Stack(
              children: [
                Image.asset(
                  detailMilk.milkPhoto,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                AppBar(
                  iconTheme: IconThemeData(color: mainColor),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: true,
                  title: Image.asset(
                    'images/dans_milk_logo_text.png',
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${detailMilk.milkTaste} ${detailMilk.milkName}',
                    style: TextStyle(
                      color: mainDark,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: mainDark,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        'Rp. ${detailMilk.milkPrice}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: mainDark,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.only(
                         left: 20,
                        right: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        detailMilk.bottleSize,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
