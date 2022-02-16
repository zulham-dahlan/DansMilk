import 'package:dans_milk/milk.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Milk detailMilk;

  DetailScreen({this.detailMilk});

  @override
  Widget build(BuildContext context) {

     var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Milk'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0,),
                child: Image.asset(
                  detailMilk.milkPhoto,
                  fit: BoxFit.cover,
                  height: itemHeight * 1.2,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
                child: Text(
                  detailMilk.milkName,
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Playfair',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 8.0,
                          ),
                          child: Text(
                            'Rasa',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text(
                          detailMilk.milkTaste,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 8.0,
                          ),
                          child: Text(
                            'Ukuran',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text(
                          detailMilk.bottleSize,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                width: 315.0,
                margin: EdgeInsets.only(
                  top: 15.0,
                  bottom: 15.0,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Text('Harga Rp. ${detailMilk.milkPrice}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
