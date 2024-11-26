import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/user_widgets.dart';
import 'delete_account_screen.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}
TextEditingController firstNameController = TextEditingController(text: "Lorem");
TextEditingController lastNameController = TextEditingController(text: "Ipsum");

TextEditingController phoneNoController = TextEditingController(text: "+92 3311231234");
TextEditingController emailController = TextEditingController(text: "LoremIpsum001@gamil.com");

bool isEdit = false;

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
                        onPressed: (){
                          setState((){
                            isEdit = false;
                          });
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(visualDensity: const VisualDensity(horizontal: -4),),
                        child:  Text("Done",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color:isEdit ?const Color(0xFF0D4A64) :const Color(0xFF929292)),))
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
                UserWidget.labelText("First Name"),
                UserWidget.textFormField(controller: firstNameController,onChange: () {
                  setState(() {
                    isEdit = true;
                  });
                },),
                const SizedBox(height: 10,),
                UserWidget.labelText("Last Name"),
                UserWidget.textFormField(controller: lastNameController,onChange: () {
                  setState(() {
                    isEdit = true;
                  });
                },),
                const SizedBox(height: 10,),
                UserWidget.labelText("Email Address"),
                UserWidget.textFormField(controller: emailController,onChange: () {
                  setState(() {
                    isEdit = true;
                  });
                },),
                const SizedBox(height: 10,),
                UserWidget.labelText("Phone No"),
                UserWidget.textFormField(controller: phoneNoController,onChange: () {
                  setState(() {
                    isEdit = true;
                  });
                },),
                const SizedBox(height: 31,),
                UserWidget.mainButton(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DeleteAccountScreen(),));
                }, "Delete Account", Colors.white, const Color(0xFFFF0000), 12)
              ],            //last
            ),
          ),

        ),
      ),
    );
  }
}
