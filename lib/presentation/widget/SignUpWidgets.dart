import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text buildText(String data, double size) {
  return Text(
    data,
    style: GoogleFonts.nunitoSans(color: Colors.black, fontSize: size),
  );
}


Container buildRegisterInput(String hint, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
    ),
    decoration: BoxDecoration(
        color: CupertinoColors.systemGrey6,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: CupertinoColors.tertiarySystemFill)),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            keyboardType: TextInputType.text,
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}

Text buildRegisterText(String data) {
  return Text(
    data,
    style: GoogleFonts.abhayaLibre(
      fontSize: 16,
    ),
  );
}