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
                margin: EdgeInsets.only(bottom: 5),
                width: double.infinity,
                child: Text("Now it’s just an App, but we aim to change the world",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non ",
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                const SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: double.infinity,
                child: Text("Now it’s just an App, but we aim to change the world",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non ",
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                const SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: double.infinity,
                child: Text("Now it’s just an App, but we aim to change the world",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF0D4A64)),textAlign: TextAlign.left,),
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non ",
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
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child:  const ImageIcon(AssetImage("assets/images/instagramIcon.png"),size: 24,color: Color(0xFF0D4A64),)),
                  const SizedBox(width: 4,),
                  InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: const ImageIcon(AssetImage("assets/images/twiterIcon.png"),size: 24,color: Color(0xFF0D4A64))),
                  const SizedBox(width: 4,),
                  InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: const ImageIcon(AssetImage("assets/images/facebookIcon.png"),size: 24,color: Color(0xFF0D4A64))),
                  const SizedBox(width: 4,),
                  InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: const ImageIcon(AssetImage("assets/images/ellipse.png"),size: 24,color: Color(0xFF0D4A64))),
        
                ],
              )
        
          ],),
        ),
      ),
    );
  }
}
