import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserWidget{

  static Widget labelText(String label){
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

  static Widget textField(TextEditingController controller,String hintText){
    return SizedBox(
      height: 36,
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),
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
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0.5,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0.5,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(19),
            )
        ),
      ),
    );
  }


  static Widget textFormField({required TextEditingController controller,required VoidCallback onChange}){
    return SizedBox(
      height: 36,
      child: TextFormField(
        controller: controller,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,fontSize: 12,
          ),
          cursorColor: Colors.grey,
          cursorWidth: 1,
          onChanged: (value){
          onChange();
          },
          decoration: InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 16),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(19),borderSide: BorderSide.none)
          )
      ),
    );
  }


  static Widget mainButton(VoidCallback onTap,String text,Color backGround,Color textColor,double fontSize,){
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: onTap,
      child: Container(
        width: 174,
        height: 36,
        decoration: BoxDecoration(
            color: backGround,
            borderRadius: BorderRadius.circular(25)
        ),
        child: Center(child: Text(text,style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: fontSize,color: textColor),)),
      ),
    );
  }


  static Widget legalScreenText(String text){
    return Text(text,
      style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,);
  }

  static Widget legalScreenOptionText(String text){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [const Text("  \u2022  ",style: TextStyle(color: Color(0xFF6C6C6C)),),
        Expanded(child: SizedBox(
          child: Text(text,
            style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),),),],);
  }

                                 // another user sending text message show this box
  static Widget replayShowBox(){
    return  Positioned(
      bottom: 65,
      left: 26,
      child: Container(
        width: 50,
        height: 23,
        padding: EdgeInsets.symmetric(horizontal: 13),
        // margin: EdgeInsets.only(bottom: 65),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageIcon(AssetImage("assets/images/ellipse3.png"),size: 5,color: Colors.black.withOpacity(0.6),),
            ImageIcon(AssetImage("assets/images/ellipse1.png"),size: 5,color: Colors.black.withOpacity(0.4),),
            ImageIcon(AssetImage("assets/images/ellipse2.png"),size: 5,color: Color(0xFFD9D9D9),),
          ],
        ),
      ),
    );
  }

}