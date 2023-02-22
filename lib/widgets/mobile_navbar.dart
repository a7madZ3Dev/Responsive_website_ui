import 'package:flutter/material.dart';

import '../helpers/style.dart';

PreferredSizeWidget mobileTopBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: active,
        ),
        onPressed: () {
          key.currentState!.openDrawer();
        },
      ),
      title: Image.asset("assets/images/logo.png"),
      centerTitle: true,
      elevation: 0,
      backgroundColor: bgColor,
    );
