import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const TextFieldWidget({super.key,required this.hintText,required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,fontSize: 12,
        ),
        cursorColor: Colors.grey,
        cursorWidth: 1,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 12),
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16),
            fillColor: Colors.white,
            filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(19),borderSide: BorderSide.none)
        )
      ),
    );
  }
}
