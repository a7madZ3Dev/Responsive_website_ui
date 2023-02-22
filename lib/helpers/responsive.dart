import 'package:flutter/material.dart';

import '../utils/extensions.dart';

const int largeScreenSize = 1200;
const int smallScreenSize = 852;

class ResponsiveWidget extends StatelessWidget {

  /// the custom screen size is specific to this project
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  // final GlobalKey<ScaffoldState> scaffoldKey;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    // required this.scaffoldKey,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  
  static bool isLargeScreen(BuildContext context) {
    return context.width >= largeScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return context.width > smallScreenSize && context.width < largeScreenSize;
  }

  static bool isSmallScreen(BuildContext context) {
    return context.width <= smallScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= largeScreenSize) {
          return largeScreen;
        } else if (width < largeScreenSize && width > smallScreenSize) {
          return mediumScreen ?? largeScreen;
        }
        // if (scaffoldKey.currentState!.isDrawerOpen) {
        //   Future.delayed(Duration.zero, () {
        //     Navigator.of(context).pop();
        //   });
        // }
        return smallScreen ?? largeScreen;
      },
    );
  }
}