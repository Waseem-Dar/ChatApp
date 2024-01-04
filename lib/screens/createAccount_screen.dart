import 'package:chat_app/screens/tab_screen.dart';
import 'package:chat_app/widgets/lebelText_widget.dart';
import 'package:chat_app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(242, 247, 250, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
        
            children: [
              const SizedBox(height: 67,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 20,color: Colors.black,),
                  ),
                  Text("Create Account",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20),),
                  const SizedBox(),
                ],
              ),
              const SizedBox(height: 40,),
              const LabelTextWidget(label: "First Name"),
              const TextFieldWidget(hintText: "Enter your first name"),
              const SizedBox(height: 10,),
              const LabelTextWidget(label: "Last Name"),
              const TextFieldWidget(hintText: "Enter your last name"),
              const SizedBox(height: 10,),
              const LabelTextWidget(label: "Username"),
              const TextFieldWidget(hintText: "Enter your Username"),
              const SizedBox(height: 10,),
              const LabelTextWidget(label: "Email Address"),
              const TextFieldWidget(hintText: "Enter your email address"),
              const SizedBox(height: 10,),
              const LabelTextWidget(label: "Country"),
              SizedBox(
                height: 36,
                child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    ),
                    cursorColor: Colors.grey,
                    cursorWidth: 1,
                    decoration: InputDecoration(
                        hintText: "Select your Country",
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 12),
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(19),borderSide: BorderSide.none),
                      suffixIcon: IconButton(
                           padding: EdgeInsets.zero,
                          onPressed: (){}, icon: const Icon(Icons.arrow_drop_down_outlined,color: Color(0xFF0D4A64),))
                    )
                ),
              ),
              const SizedBox(height: 10,),
              const LabelTextWidget(label: "Phone No"),
              Row(
                children: [
                  Container(
                    width: 52,
                    height: 36,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Center(child: Text("+92",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400),),),
                  ),
                  const SizedBox(width: 6,),
                  const Expanded(child: TextFieldWidget(hintText: "12339819812928"))
                ],
              ),
              const SizedBox(height: 10,),
              const LabelTextWidget(label: "Password"),
              const TextFieldWidget(hintText: "Enter your password"),
              const SizedBox(height: 10,),
              const LabelTextWidget(label: "Confirm Password"),
              const TextFieldWidget(hintText: "Confirm your password"),
              const SizedBox(height: 36,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TabScreen(),));
                },
                child: Container(
                  width: 188,
                  height: 37,
                  decoration: BoxDecoration(
                      color: const Color(0xFF0D4A64),
                      borderRadius: BorderRadius.circular(25)

                  ),
                  child: Center(child: Text("Create Account",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white),)),
                ),
              ),
              const SizedBox(height: 36,),
        
            ],
          ),
        ),
      ),
    );
  }
}



