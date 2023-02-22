import 'package:flutter/material.dart';

import '../widgets/mobile.dart';
import '../widgets/desktop.dart';
import '../../helpers/style.dart';
import '../../widgets/drawer.dart';
import '../../utils/extensions.dart';
import '../../helpers/responsive.dart';
import '../../widgets/mobile_navbar.dart';
import '../../widgets/desktop_navbar.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        backgroundColor: bgColor,
        drawer: const MobileMenu(),
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? mobileTopBar(scaffoldKey)
            : PreferredSize(
                preferredSize: Size(context.width, 1000),
                child: const NavBar(),
              ),
        body: const ResponsiveWidget(
          largeScreen: DesktopScreen(),
          smallScreen: MobileScreen(),
        ));
  }
}
