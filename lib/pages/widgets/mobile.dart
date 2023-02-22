import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/style.dart';
import '../../widgets/button.dart';
import '../../utils/extensions.dart';
import '../../constants/content.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: context.width / 30,
              ),
              Image.asset(
                "assets/images/img.png",
                height: context.height / 3,
                width: context.width / 2,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: context.width / 30,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // width: 400,
              constraints: const BoxConstraints(maxWidth: 400),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Get noticed for ",
                      ),
                      TextSpan(
                          text: "who",
                          style: GoogleFonts.roboto(color: active)),
                      const TextSpan(
                        text: " you are, ",
                      ),
                      TextSpan(
                          text: "not what",
                          style: GoogleFonts.roboto(color: active)),
                      const TextSpan(
                        text: " you look like.",
                      ),
                    ],
                    style: GoogleFonts.roboto(
                        fontSize: context.width < 500 ? 20 : 28,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 500,
          constraints: const BoxConstraints(maxWidth: 500),
          child: Text(
            mainParagraph,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                letterSpacing: 1.5,
                height: 1.5,
                fontSize: context.width < 500 ? 12 : 16),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 500),
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: const Offset(0, 40),
                    blurRadius: 80)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: context.width / 4,
                padding: const EdgeInsets.only(left: 4),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      border: InputBorder.none),
                ),
              ),
              const CustomButton(
                text: "Get started",
              )
            ],
          ),
        ),
      ],
    );
  }
}
