import 'package:flutter/material.dart';
import 'package:planets/font_style.dart';
import 'package:planets/model/planet.dart';
import 'package:planets/ui/widget/separator.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail', arguments: planet),
      child: InkWell(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Stack(
            children: <Widget>[
              PlanetCard(),
              PlanetThumbnail(thumbnail: planet.image, planetId: planet.id),
              PlanetCardContent(planet),
            ],
          ),
        ),
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
  final String planetId;

  const PlanetThumbnail({Key key, this.thumbnail, this.planetId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Hero(
        tag: "planet-hero-$planetId",
        child: Image.asset(
          thumbnail,
          width: 92,
          height: 92,
        ),
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
          SizedBox(width: 8.0),
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
      margin: EdgeInsets.only(left: 116, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          SizedBox(height: 4.0),
          Text(planet.location, style: subHeaderTextStyle),
          Separator(),
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
