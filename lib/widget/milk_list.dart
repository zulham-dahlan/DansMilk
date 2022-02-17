import 'package:dans_milk/milk.dart';
import 'package:dans_milk/widget/milk_card.dart';
import 'package:flutter/material.dart';

class MilkList extends StatefulWidget {
  List<Milk> milks ;

  MilkList({this.milks});

  @override
  _MilkListState createState() => _MilkListState();
}

class _MilkListState extends State<MilkList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.milks.length,
      itemBuilder: (context, index){
        Milk currentMilk = widget.milks[index];
        return MilkCard(milkDetail :currentMilk);
        
      }
    );
  }
}