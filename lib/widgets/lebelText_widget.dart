import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelTextWidget extends StatelessWidget {
  final String label;
  const LabelTextWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: double.infinity,
      child: Text(label,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 2.5
        ),

      ),
    );
  }
}
