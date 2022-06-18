import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double fontsize;

  const CustomTextWidget({
    Key? key,
    required this.text,
    this.fontWeight,
    this.textAlign,
    required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: fontWeight,
        )));
  }
}
