import 'package:chat_app/widgets/constant.dart';
import 'package:chat_app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatUserDetailsScreen extends StatefulWidget {
  const ChatUserDetailsScreen({super.key});

  @override
  State<ChatUserDetailsScreen> createState() => _ChatUserDetailsScreenState();
}

class _ChatUserDetailsScreenState extends State<ChatUserDetailsScreen> {
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
                    Text("Contact Details",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                   const SizedBox(width: 50,)
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
                Text("@Loremipsum001",style: GoogleFonts.poppins( fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF5C90DC)),),
                const SizedBox(height: 20,),
                Constant.labelText("Phone No"),
                const TextFieldWidget(hintText: "+92 3321231231"),
                const SizedBox(height: 12,),
                SizedBox(
                  height: 36,
                  child:  TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,fontSize: 12,
                      ),
                      cursorColor: Colors.grey,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                          hintText: "Location",
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 12,color: Colors.black),
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(19),borderSide: BorderSide.none),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            onTap: () {},
                            child: Text("Reques Location",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xFF5C90DC)),),
                          ),
                        ),
                        suffixIconConstraints: const BoxConstraints()
                      )
                  ),
                ),
                const SizedBox(height: 35,),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    width: 174,
                    height: 36,
                    decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(19)
                    ),
                    child: Center(child: Text("Make Guardian",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12, color: const Color(0xFF5C90DC)),textAlign: TextAlign.center,)),
                  ),
                ),
                   const SizedBox(height: 13,),
                Constant.mainButton(() {}, "Delete Account", Colors.white, const Color(0xFFFF0000), 12)
              ],
            ),
          ),
        ),
      ),
    );
  }

void showDeleteDialog(){
  showDialog(context: context, builder: (_) => AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    insetPadding: const EdgeInsets.symmetric(horizontal: 30),
    contentPadding: const EdgeInsets.only( right: 24,left: 24,top: 24,bottom: 0),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Are you sure you want to remove @loremipsum as a friend?",
          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),textAlign: TextAlign.center,),
        const SizedBox(height: 15,),
        const Divider(
          height:1,
          color: Color(0x49929292),
        ),
      ],
    ),
    actionsPadding:  EdgeInsets.zero,
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    actions: [
      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("Yes",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15,color: const Color(0xFF5C90DC)),)),
         const SizedBox(height:50,child: VerticalDivider(color: Color(0x49929292),width: 1,endIndent: 15,)),
      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("No",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15,color: const Color(0xFF5C90DC)),))
    ],
  ));
}
}
