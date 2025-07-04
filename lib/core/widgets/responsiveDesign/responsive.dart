import 'package:flutter/material.dart';
import 'package:skillswap1/core/constant%20values/str_values.dart';
class ResponsiveWidget extends StatelessWidget{
  const ResponsiveWidget({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= ScreenSizes.DESKTOPSIZE) {
          return desktop ;
        } else if (constraints.maxWidth < ScreenSizes.DESKTOPSIZE &&
            constraints.maxWidth >= ScreenSizes.TABLETSIZE) {
          return tablet ;
        } else {
          return mobile ;
        }
      },
    );
  }

}