import 'package:flutter/material.dart';

class Dimensions {
  // static const double designWidth = 393 / 100;
  // static const double designHeight = 852 / 100;

  static double myWidthThis(BuildContext context) {
    return MediaQuery.of(context).size.width / 393;
  }

  static double myHeightThis(BuildContext context) {
    return MediaQuery.of(context).size.height / 852;
  }

  // TODO: Size with out status-bar and navigation-bar
  static double myHeightFThis(BuildContext context) {
    return (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.bottom -
            MediaQuery.of(context).padding.top) /
        852;
  }
}
