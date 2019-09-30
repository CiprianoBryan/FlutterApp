import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int rated;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.rated, this.descriptionPlace);

  List<Widget> starsWidget(int rated) {
    List<Widget> starts = List();
    for (int i = 1; i <= 5; i ++) {
      starts.add(starWidget(rated < i? Icons.star_border: Icons.star));
    }
    return starts;
  }

  Widget starWidget(IconData icon) {
    Widget star = Container(
      margin: EdgeInsets.only(
          top: 333.0,
          right: 3.0
      ),
      child: Icon(
        icon,
        color: Color(0xFFf2C611),
      ),
    );
    return star;
  }

  @override
  Widget build(BuildContext context) {
    final titleStars = Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 330.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: starsWidget(rated),
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }
}