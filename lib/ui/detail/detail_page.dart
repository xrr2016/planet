import 'package:flutter/material.dart';
import 'package:planets/font_style.dart';
import 'package:planets/model/planet.dart';
import 'package:planets/ui/detail/planet_summary.dart';
import 'package:planets/ui/widget/separator.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final Planet planet = ModalRoute.of(context).settings.arguments;

    Container _getBackground() {
      return Container(
        child: Image.network(
          planet.picture,
          fit: BoxFit.cover,
        ),
        constraints: BoxConstraints.expand(height: 300),
      );
    }

    Container _getGradient() {
      return Container(
        margin: EdgeInsets.only(top: 190.0),
        height: 110.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x00736AB7),
              Color(0xFF736AB7),
            ],
            stops: [0.0, 0.9],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
          ),
        ),
      );
    }

    Widget _getContent() {
      final _overviewTitle = "Overview".toUpperCase();

      return ListView(
        padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          PlanetSummary(planet: planet),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _overviewTitle,
                  style: headerTextStyle,
                ),
                Separator(),
                Text(planet.description, style: commonTextStyle),
              ],
            ),
          ),
        ],
      );
    }

    Container _getToolbar(BuildContext context) {
      return new Container(
        margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: new BackButton(color: Colors.white),
      );
    }

    return Scaffold(
      body: Container(
        color: Color(0xFF736AB7),
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
            // Text(planet.name),
            // Hero(
            //   tag: 'planet-hero-${planet.id}',
            //   child: Image.asset(
            //     planet.image,
            //     width: 96.0,
            //     height: 96.0,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
