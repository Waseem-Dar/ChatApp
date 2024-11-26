import 'package:chat_app/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSpherScreen extends StatelessWidget {
  const AboutSpherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFF2F7FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
            const SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios_outlined,size: 20,)),
                Text("About Spher",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
                const SizedBox(width: 30,),
              ],
            ),
              const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                width: double.infinity,
                child: Text("Now it’s just an App, but we aim to change the world",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
              ),
              Text(Constant.secondString,
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                width: double.infinity,
                child: Text("Now it’s just an App, but we aim to change the world",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
              ),
              Text(Constant.secondString,
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                width: double.infinity,
                child: Text("Now it’s just an App, but we aim to change the world",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
              ),
              Text(Constant.secondString,
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                const SizedBox(height: 25,),
                SizedBox(
                  width: double.infinity,
                  child: Text("For More Information",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
                ),
                const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialIcon("assets/images/instagramIcon.png", () {}),
                  const SizedBox(width: 4,),
                  socialIcon("assets/images/twiterIcon.png", () {}),
                  const SizedBox(width: 4,),
                  socialIcon("assets/images/facebookIcon.png", () {}),
                  const SizedBox(width: 4,),
                 socialIcon("assets/images/ellipse.png", () {}),
                ],
              )
          ],),
        ),
      ),
    );
  }
  Widget socialIcon(String iconPath,VoidCallback onTap ){
    return  InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child:  ImageIcon(AssetImage(iconPath),size: 24,color:const Color(0xFF0D4A64)));
  }
}
