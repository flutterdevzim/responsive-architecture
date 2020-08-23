import 'package:flutter/material.dart';

class OrientationLayout extends StatelessWidget {
  // pass different widget based on device screen orientation
  final Widget landscape;
  final Widget portrait;

  const OrientationLayout({
    Key key,
    this.landscape,
    this.portrait,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    if(orientation == Orientation.landscape) {
      return landscape ?? portrait;
    }

    // by default return portrait mode widget
    return portrait;
  }
}
