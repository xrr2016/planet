import 'package:flutter/material.dart';
import 'package:planets/model/planet.dart';
import 'package:planets/ui/home/planet_row.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanetRow(planets[0]);
  }
}
