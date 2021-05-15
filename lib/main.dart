import 'package:flutter/material.dart';
import 'package:jurnalitis_web/ui/view/homepage_view.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(Jurnalitis());
}

class Jurnalitis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          HomePageView(),
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: Colors.white)),
      title: 'Jurnalitis',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}