import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/review_list.dart';
import '../widgets/description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {

  final String descriptionDummy =
    "Lorem Ipsum is simply dummy text of the printing and typesetting " +
    "industry. Lorem Ipsum has been the industry's standard dummy text " +
    "ever since the 1500s, when an unknown printer took a galley of type " +
    "and scrambled it to make a type specimen book." + "\n\n" +
    "Lorem Ipsum is simply dummy text of the printing and typesetting " +
    "industry. Lorem Ipsum has been the industry's standard dummy text " +
    "ever since the 1500s, when an unknown printer took a galley of type " +
    "and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Stefany", 5, descriptionDummy),
            ReviewList()
          ]
        ),
        HeaderAppBar()
      ]
    );
  }
}