import 'package:chat_app/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/user_widgets.dart';

class TermsDetailsScreen extends StatelessWidget {
  const TermsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // ScrollController
    final ScrollController verticalScroll = ScrollController();

    return  Scaffold(

      backgroundColor:  const Color(0xFFF2F7FA),
      body: Scrollbar(
        controller: verticalScroll,
        thickness: 1,
        child: SingleChildScrollView(
          controller: verticalScroll,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              children: [
                const SizedBox(height: 62,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 20,)),
                    Row(
                      children: [
                        const ImageIcon(AssetImage("assets/images/termsIcon.png"),size: 20,color: Color(0xFF0D4A64),),
                        const SizedBox(width: 5,),
                        Text("SPHER",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),textAlign: TextAlign.center,),
                      ],
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
                const SizedBox(height: 35,),
                SizedBox(
                    width: double.infinity,
                    child: Text("Terms & Conditions",style: GoogleFonts.poppins(
                        fontSize: 16,fontWeight: FontWeight.w600,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),),
                Container(
                  margin: const EdgeInsets.only(top: 8,bottom: 15),
                  width: double.infinity,
                  child: Text("Last updated on January 23, 2023",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,fontSize: 10,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
                ),
                UserWidget.legalScreenText(Constant.secondString),
                const SizedBox(height: 10,),
                UserWidget.legalScreenText(Constant.firstString),
                Container(
                  margin: const EdgeInsets.only(top: 18,bottom: 8),
                  width: double.infinity,
                  child: Text("  1. THE APPLICATION",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
                ),
                UserWidget.legalScreenText("1.1 ${Constant.firstString}"),
                const SizedBox(height: 10,),
                UserWidget.legalScreenText("1.2 ${Constant.firstString}"),
                Container(
                  margin: const EdgeInsets.only(top: 18,bottom: 8),
                  width: double.infinity,
                  child: Text("  1. THE APPLICATION",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
                ),
                UserWidget.legalScreenText("1.1 ${Constant.firstString}"),
                const SizedBox(height: 10,),
                UserWidget.legalScreenText("1.2 ${Constant.firstString}"),
                const SizedBox(height: 10,),
                UserWidget.legalScreenText(Constant.secondString),
                const SizedBox(height: 15,),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tUt enim ad minim veniam, ullamco laboris nisi ut aliquip ",
                  style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,decorationColor:const Color(0xFF5C90DC) ,color: const Color(0xFF5C90DC),),textAlign: TextAlign.justify,),
                const SizedBox(height: 15,),
                UserWidget.legalScreenText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
                const SizedBox(height: 10,),
                UserWidget.legalScreenOptionText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"),
                UserWidget.legalScreenOptionText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"),
                UserWidget.legalScreenOptionText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}