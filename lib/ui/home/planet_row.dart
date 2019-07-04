import 'package:flutter/material.dart';
import 'package:planets/font_style.dart';
import 'package:planets/model/planet.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Stack(
        children: <Widget>[
          PlanetCard(),
          PlanetThumbnail(thumbnail: planet.image),
          PlanetCardContent(planet),
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
  final String thumbnail;

  const PlanetThumbnail({Key key, this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Image.asset(
        thumbnail,
        width: 92,
        height: 92,
      ),
    );
  }
}

class PlanetValue extends StatelessWidget {
  final String icon;
  final String text;

  const PlanetValue({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Image.asset(icon, height: 12.0),
          Container(width: 8.0),
          Text(
            text,
            style: regularTextStyle,
          ),
        ],
      ),
    );
  }
}

class PlanetCardContent extends StatelessWidget {
  final Planet planet;

  PlanetCardContent(this.planet);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(116.0, 16.0, 16.0, 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 4.0),
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          Container(height: 10.0),
          Text(planet.location, style: subHeaderTextStyle),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: Color(0xff00c6ff),
          ),
          Row(
            children: <Widget>[
              PlanetValue(
                icon: "assets/images/ic_distance.png",
                text: planet.distance,
              ),
              PlanetValue(
                icon: "assets/images/ic_gravity.png",
                text: planet.gravity,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
