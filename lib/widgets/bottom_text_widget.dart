import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomText extends StatelessWidget {
  final String mainText;
  final String secondaryText;
  final Color? color;

  const BottomText(
      {required this.mainText,
      required this.secondaryText,
      Key? key,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          children: [
            TextSpan(
              text: "$mainText \n",
              style: GoogleFonts.roboto(
                color: color ?? Colors.black,
              ),
            ),
            TextSpan(
              text: secondaryText,
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ],
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 58,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
