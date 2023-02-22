import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/style.dart';
import '../widgets/button.dart';
import '../../utils/extensions.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(context.width, 1000),
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              Image.asset("assets/images/logo.png"),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: context.width / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 12),
                          Text(
                            'Pricing',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[0] ? active : disable,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              decoration: BoxDecoration(
                                  color: active,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 7,
                              width: 7,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: context.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'LogIn',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[1] ? active : disable,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              decoration: BoxDecoration(
                                  color: active,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 7,
                              width: 7,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: context.width / 20),
                  ],
                ),
              ),
              const CustomButton(
                text: "Register",
              ),
              SizedBox(width: context.width / 40),
            ],
          ),
        ),
      ),
    );
  }
}
