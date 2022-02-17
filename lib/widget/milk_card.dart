import 'package:dans_milk/common/style.dart';
import 'package:dans_milk/milk.dart';
import 'package:flutter/material.dart';

class MilkCard extends StatelessWidget {
  Milk milkDetail;

  MilkCard({this.milkDetail});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 150,
          padding: EdgeInsets.all(15),
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(left: 10, top: 80, right: 10, bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: Offset(0.0, 4.0))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${milkDetail.milkTaste} ${milkDetail.milkName}',
                style: TextStyle(
                  color: mainDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  'Rp. ${milkDetail.milkPrice}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              milkDetail.milkPhoto,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
