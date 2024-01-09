import 'package:chat_app/screens/profilePages/add_new_place_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPlacesScreen extends StatefulWidget {
  const MyPlacesScreen({super.key});

  @override
  State<MyPlacesScreen> createState() => _MyPlacesScreenState();
}
final List places = ["hi"];
class _MyPlacesScreenState extends State<MyPlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xFFF2F7FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 22,right: 27),
          child: Column(
            children: [
              const SizedBox(height: 62,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back_ios_new_rounded,size: 20,)),
                  Text("My Contacts",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),textAlign: TextAlign.center,),
                  InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
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
                ],
              ),
              const SizedBox(height: 50,),
              Text("Your places will be accessible to you when sharing your destination",
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const  Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
              places.isNotEmpty?SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  itemCount: places.length,
                    shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPlaceScreen(),));
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
                      tileColor: Colors.white,
                      leading: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        ImageIcon(AssetImage("assets/images/dot.png"),size: 11,color: Color(0xFF0D4A64),),
                        ImageIcon(AssetImage("assets/images/Line.png"),size: 13,color: Color(0xFF0D4A64),),
                      ]),
                      title: Text("Home",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: const  Color(0xFF0D4A64)),),
                      subtitle:Text("Tap to see more",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color:  const Color(0xFF6C6C6C)),),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFF0D4A64),size: 15,),
                    ),
                  );
                },),
              ):   SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                child: Center(child: SizedBox(
                    width: 117,
                    child: Text("You have no places yet",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 16,color: const  Color(0xFF6C6C6C)),textAlign:TextAlign.center,))),),
            ],
          ),
        ),
      ),
    );
  }
}
