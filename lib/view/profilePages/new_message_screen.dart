import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_group_screen.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({super.key});

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F7FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios_outlined,size: 20,)),
                  Text("New Message",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
                  const SizedBox(width: 30,),
                ],
              ),
              const SizedBox(height: 30,),
              Container(
                width: 236,
                height: 36,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50),
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(12),
                      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const  CreateGroupScreen(),));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0D4A64),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(child: ImageIcon(AssetImage("assets/images/addIcon.png"),size: 12,color: Colors.white,),),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text("Create new group message",style: GoogleFonts.poppins(
                        fontSize: 12,fontWeight: FontWeight.w400,color: const  Color(0xFF6C6C6C)),)
                  ],
                ),
              ),
              const SizedBox(height: 32,),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                child: Text("All my contacts",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),textAlign: TextAlign.left,),
              ),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const  NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: ListTile(
                    tileColor: Colors.white,
                    dense: true,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
                    leading: Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                        image: const DecorationImage(image: AssetImage("assets/images/menImage.png")),
                        borderRadius: BorderRadius.circular(20)
                      ),),
                    title: Text("Lorem Ipsum",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600),),
                    subtitle: Text("@Loremipsum001",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 10,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                  ),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
