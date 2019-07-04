import 'package:flutter/material.dart';
import 'package:planets/ui/home/gradient_app_bar.dart';
import 'package:planets/ui/home/home_page_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            GradientAppBar('treva'),
            HomePageBody(),
            HomePageBody(),
            HomePageBody(),
            HomePageBody(),
          ],
        ),
      ),
    );
  }
}
