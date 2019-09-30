import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/stefany1.jpg"),
          CardImage("assets/img/stefany2.jpg"),
          CardImage("assets/img/stefany3.jpg"),
          CardImage("assets/img/stefany4.jpg"),
          CardImage("assets/img/stefany.jpg")
        ],
      ),
    );
  }

}