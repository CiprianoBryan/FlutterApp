import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/bryan.jpg", "Bryan Cipriano", "4 review 16 photos", "Es kawaaii"),
        Review("assets/img/renato.jpg", "Renato Livaque", "0 review 7 photos", "Mi hermanita"),
        Review("assets/img/maria.jpg", "Maria Ramirez", "0 review 5 photos", "Es muy linda"),
        Review("assets/img/anthuanet.jpg", "Anthuanet Ramirez", "0 review 4 photos", "Cuando sea grande quiero ser como ella"),
      ],
    );
  }

}