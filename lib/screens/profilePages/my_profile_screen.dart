import 'dart:developer';

import 'package:chat_app/screens/profilePages/delete_account_screen.dart';
import 'package:chat_app/widgets/constant.dart';
import 'package:chat_app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor:  const Color(0xFFF2F7FA),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 62,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded,size: 20,)),
                    Text("My Profile",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                    TextButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(visualDensity: const VisualDensity(horizontal: -4)),
                        child:  Text("Done",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF929292)),))
                  ],
                ),
                const SizedBox(height:15 ,),
                const SizedBox(
                  height: 88,
                  width: 88,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/menImage.png"),
                  ),
                ),
                const SizedBox(height: 10,),
                Text("Lorem Ipsum",style: GoogleFonts.poppins(fontSize:17,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                InkWell(

                    onTap: () {},
                    child: Text("Edit your Profile",style: GoogleFonts.poppins( fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF5C90DC)),)),
                const SizedBox(height: 10,),
                Constant.labelText("First Name"),
                Constant.textField(firstNameController, "First Name"),
                const SizedBox(height: 15,),
                Constant.labelText("Last Name"),
               Constant.textField(lastNameController, "Last Name"),
                const SizedBox(height: 10,),
                Constant.labelText("Email Address"),
                const TextFieldWidget(hintText: "LoremIpsum001@gamil.com"),
                const SizedBox(height: 10,),
                Constant.labelText("Phone No"),
                const TextFieldWidget(hintText: "+92 3311231234"),
                const SizedBox(height: 31,),
                Constant.mainButton(() {}, "Delete Account", Colors.white, const Color(0xFFFF0000), 12)
              ],            //last
            ),
          ),

        ),
      ),
    );
  }
}
