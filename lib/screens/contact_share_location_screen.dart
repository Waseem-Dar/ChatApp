import 'package:chat_app/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactShareLocationScreen extends StatefulWidget {
  const ContactShareLocationScreen({super.key});

  @override
  State<ContactShareLocationScreen> createState() => _ContactShareLocationScreenState();
}

bool checkBoxAll = false;
List<bool> checkBoxList = List.generate(5, (index) => false);

class _ContactShareLocationScreenState extends State<ContactShareLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F7FA),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Constant.mainButton( () {},
          "Continue",const Color(0xFF0D4A64), Colors.white, 12),
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
                  Text("Create new group",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
                  const SizedBox(width: 30,),
                ],
              ),
              const SizedBox(height: 35,),
              Container(
                margin: const EdgeInsets.only(left: 7,right: 35),
                child: Text("Select SPHER contacts to share your location information with.",style: GoogleFonts.poppins(
                    fontSize: 12,fontWeight: FontWeight.w400,color:const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Select contacts",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
                    Transform.scale(
                      scale: 0.7,
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme:const CheckboxThemeData(side: BorderSide(color: Color(0xFF0D4A64),width: 1)),
                        ),
                        child: Checkbox(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                          activeColor: const Color(0xFF0D4A64),
                          visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                          value:checkBoxAll ,
                          onChanged: (newValue) {
                            setState(() {
                              checkBoxAll = newValue!;
                              checkBoxList = List.generate(5, (index) => newValue);
                            });
                          },),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                padding:const EdgeInsets.only(bottom: 60),
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    dense: true,
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
                    leading: Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage("assets/images/menImage.png")),
                          borderRadius: BorderRadius.circular(20)),),
                    title: Text("Lorem Ipsum",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600),),
                    subtitle: Text("@Loremipsum001",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,fontSize: 10,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                    trailing: Transform.scale(
                      scale: 0.7,
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme:const CheckboxThemeData(side: BorderSide(color: Color(0xFF0D4A64),width: 1)),
                        ),
                        child: Checkbox(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                          activeColor: const Color(0xFF0D4A64),
                          visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                          value: checkBoxList[index],
                          onChanged: (newValue) {
                            setState(() {
                              checkBoxList[index] = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
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
