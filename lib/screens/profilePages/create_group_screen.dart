import 'package:chat_app/widgets/lebelText_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateGroupScreen extends StatefulWidget {
  const CreateGroupScreen({super.key});

  @override
  State<CreateGroupScreen> createState() => _CreateGroupScreenState();
}
bool checkBox = false;
class _CreateGroupScreenState extends State<CreateGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F7FA),
        body: Padding(
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
              const SizedBox(height: 21,),
              const LabelTextWidget(label: "Group name"),
              SizedBox(
                height: 36,
                child: TextFormField(
                  style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color:const Color(0xFF6C6C6C) ),
                  cursorColor: Colors.grey,
                  cursorWidth: 1,
                  decoration: InputDecoration(
                    hintText: "Enter group name",
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
              Row(
                children: [
                  Text("Select contacts",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
                  Transform.scale(
                    scale: 0.7,
                    child: Theme(
                      data: ThemeData(
                          unselectedWidgetColor: Colors.red),
                      child: Checkbox(
                        // shape: RoundedRectangleBorder(side: BorderSide(color: Colors.red)),
                        activeColor: const Color(0xFF0D4A64),
                        visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                        // fillColor: const MaterialStatePropertyAll(Color(0xFF0D4A64)),
                        value:checkBox , onChanged: (newValue) {
                        setState(() {
                        checkBox = newValue!;
                        });
                      },),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
