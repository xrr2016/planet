import 'package:flutter/material.dart';
import 'package:planets/model/planet.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final Planet planet = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
        color: Color(0xFF736AB7),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(planet.name),
            Hero(
              tag: 'planet-hero-${planet.id}',
              child: Image.asset(
                planet.image,
                width: 96.0,
                height: 96.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
