import 'package:dans_milk/detail_screen.dart';
import 'package:dans_milk/milk.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Dans Milk'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        children: List.generate(milkList.length, (index) {
          Milk milk = milkList[index];
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(detailMilk: milk);
              }));
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(milk.milkPhoto, fit: BoxFit.cover, height: itemHeight * 0.7,),
                  Container(
                    margin: EdgeInsets.only(top: 8.0, left: 4.0),
                    child: Text(
                      milk.milkName,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Playfair',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 4.0),
                    child: Text(
                      milk.milkTaste,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 8.0,
                      left: 4.0,
                    ),
                    child: Text(
                      'Rp. ${milk.milkPrice}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
