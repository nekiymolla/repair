import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingButtons extends StatelessWidget {
  OnBoardingButtons(
      {super.key,
      this.onPressed,
      required this.label,
      required this.color,
      required this.fontColor});

  Function()? onPressed;
  String label;
  Color color;
  Color fontColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ))),
        child: Text(
          label,
          style: GoogleFonts.roboto(color: fontColor),
        ),
      ),
    );
  }
}
