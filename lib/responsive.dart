import 'package:flutter/material.dart';

const responsiveWidth = 840;

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < responsiveWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= responsiveWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 900 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= responsiveWidth) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
