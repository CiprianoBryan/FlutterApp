import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_place.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class ProfilePlacesList extends StatelessWidget {
  final Place place = new Place('Mountain Fuji Tokyo', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  final Place place2 = new Place('Puente de los Suspiros', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace('assets/img/fuji.jpg', place),
          ProfilePlace('assets/img/suspiros.jpg', place2),
        ],
      ),
    );
  }

}