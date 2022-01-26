import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.mobileWidget,
    required this.tabletWidget,
    required this.desktopWidget,
  }) : super(key: key);

  final Widget mobileWidget;
  final Widget tabletWidget;
  final Widget desktopWidget;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 700 &&
        MediaQuery.of(context).size.width <= 1100;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1100;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (size.width <= 700) {
      return mobileWidget;
    } else if (size.width > 700 && size.width <= 1100) {
      return tabletWidget;
    } else {
      return desktopWidget;
    }
  }
}
