import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget inputAuth(String hint, bool obscure) {
  return Container(
    height: 60,
    alignment: Alignment.center,
    child: TextField(
      cursorColor: const Color(0xFF004E8F),
      obscureText: obscure,
      style: GoogleFonts.montserrat(
          textStyle: const TextStyle(fontSize: 20, color: Colors.black)),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        hintStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
          fontSize: 14,
          color: Color(0xFF004E8F),
        )),
        hintText: hint,
      ),
    ),
  );
}
