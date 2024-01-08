import 'package:chat_app/screens/profilePages/delete_account_screen.dart';
import 'package:chat_app/widgets/lebelText_widget.dart';
import 'package:chat_app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

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
                const LabelTextWidget(label: "First Name"),
                SizedBox(
                  height: 36,
                  child: TextFormField(
                    style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color:const Color(0xFF6C6C6C) ),
                    cursorColor: Colors.grey,
                    cursorWidth: 1,
                    decoration: InputDecoration(
                      hintText: "Lorem",
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
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                const LabelTextWidget(label: "Last Name"),
                SizedBox(
                  height: 36,
                  child: TextFormField(
                    style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color:const Color(0xFF6C6C6C) ),
                    cursorColor: Colors.grey,
                    cursorWidth: 1,
                    decoration: InputDecoration(
                      hintText: "Ipsum",
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
                      ),

                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const LabelTextWidget(label: "Email Address"),
                const TextFieldWidget(hintText: "LoremIpsum001@gamil.com"),
                const SizedBox(height: 10,),
                const LabelTextWidget(label: "Phone No"),
                const TextFieldWidget(hintText: "+92 3311231234"),
                const SizedBox(height: 31,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DeleteAccountScreen(),));
                  },
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    width: 174,
                    height: 36,
                    decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(19)
                    ),
                    child: Center(child: Text("Delete Account",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12, color: const Color(0xFFFF0000)),textAlign: TextAlign.center,)),
                  ),
                ),


              ],            //last
            ),
          ),

        ),
      ),
    );
  }
}
