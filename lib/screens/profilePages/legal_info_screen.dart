import 'package:chat_app/screens/profilePages/privacy_details_screen.dart';
import 'package:chat_app/screens/profilePages/terms_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_contacts_screen.dart';

class LegalInfoScreen extends StatelessWidget {
  const LegalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFF2F7FA),
      body: Padding(
        padding: const EdgeInsets.only(left: 27,right: 22),
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
                Text("Legal",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                const SizedBox(width: 30),
              ],
            ),
            const SizedBox(height: 32,),
            Container(
              height: 139,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 12,right: 21),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(19),
              ),
              child: Center(child: Column(
                children: [
                  SizedBox(
                    height: 69,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsDetailsScreen(),));
                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      leading: const ImageIcon(AssetImage("assets/images/informationIcon.png"),size: 25,),
                      title: Text("Terms & Conditions",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                      subtitle: Text("Read more",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0D4A64),size: 15,),
                    ),
                  ),
                  const Divider(
                    indent: 5,
                    color: Color(0x49929292),
                    height: 0,
                  ),
                  SizedBox(
                    height: 69,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyDetailsScreen(),));
                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      leading: const ImageIcon(AssetImage("assets/images/insuranceIcon.png"),size: 25,),
                      title: Text("Privacy Policy",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                      subtitle: Text("Read more",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0D4A64),size: 15,),
                    ),
                  ),
                ],
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
