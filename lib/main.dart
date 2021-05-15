import 'package:flutter/material.dart';
import 'package:jurnalitis_web/ui/view/homepage_view.dart';

void main() {
  runApp(Jurnalitis());
}

class Jurnalitis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurnalitis',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: HomePageView(),
    );
  }
}