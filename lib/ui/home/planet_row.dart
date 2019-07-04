import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Stack(
        children: <Widget>[
          PlanetCard(),
          PlanetThumbnail(),
        ],
      ),
    );
  }
}

class PlanetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      margin: EdgeInsets.only(left: 46),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );
  }
}

class PlanetThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Image.asset(
        "assets/images/mars.png",
        width: 92,
        height: 92,
      ),
    );
  }
}
