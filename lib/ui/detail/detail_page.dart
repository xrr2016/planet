import 'package:flutter/material.dart';
import 'package:planets/model/planet.dart';

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
          height: 300,
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

    // Widget _getContent() {
    //   return ListView(
    //     padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
    //     children: <Widget>[],
    //   );
    // }

    return Scaffold(
      body: Container(
        color: Color(0xFF736AB7),
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            // _getContent(),
            // _getToolbar(context),
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
