import 'package:chat_app/screens/tab_screen.dart';
import 'package:chat_app/widgets/constant.dart';
import 'package:chat_app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_picker/country_picker.dart';

import '../widgets/user_widgets.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}
TextEditingController countryController = TextEditingController(text: "");
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneNoController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

 String countryPhoneCode = "92";

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                UserWidget.labelText("First Name"),
                TextFieldWidget(hintText: "Enter your first name",controller: firstNameController),
                const SizedBox(height: 10,),
                UserWidget.labelText("Last Name"),
                TextFieldWidget(hintText: "Enter your last name",controller: lastNameController),
                const SizedBox(height: 10,),
                UserWidget.labelText("Username"),
                TextFieldWidget(hintText: "Enter your Username",controller: userNameController),
                const SizedBox(height: 10,),
                UserWidget.labelText("Email Address"),
                TextFieldWidget(hintText: "Enter your email address",controller: emailController),
                const SizedBox(height: 10,),
                UserWidget.labelText("Country"),
                SizedBox(
                  height: 36,
                  child: TextFormField(
                    controller: countryController,
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
                            highlightColor: Colors.transparent,
                            onPressed: (){
                              showCountryPicker(
                                countryListTheme: CountryListThemeData(
                                  inputDecoration: InputDecoration(
                                    hintText: "Search",
                                    filled: true,
                                    fillColor: Colors.grey.shade100,
                                    contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide.none)
                                  )
                                ),
                                context: context,
                                  onSelect: (Country value) {
                                setState(() {
                                  countryController.text = value.name;
                                  countryPhoneCode = value.phoneCode;
                                });
                                }
                              );
                            }, icon: const Icon(Icons.arrow_drop_down_outlined,color: Color(0xFF0D4A64),))
                      )
                  ),
                ),
                const SizedBox(height: 10,),
                UserWidget.labelText("Phone No"),
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
                      child: Center(child: Text("+$countryPhoneCode",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400),),),
                    ),
                    const SizedBox(width: 6,),
                    Expanded(child: TextFieldWidget(hintText: "Phone no",controller: phoneNoController,))
                  ],
                ),
                const SizedBox(height: 10,),
                UserWidget.labelText("Password"),
                TextFieldWidget(hintText: "Enter your password",controller: passwordController),
                const SizedBox(height: 10,),
                UserWidget.labelText("Confirm Password"),
                TextFieldWidget(hintText: "Confirm your password",controller: confirmPasswordController),
                const SizedBox(height: 36,),
                InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TabScreen(),));
                  },
                  child: Container(
                    width: 188,
                    height: 37,
                    decoration: BoxDecoration(
                        color: const Color(0xFF0D4A64),
                        borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(child: Text("Create Account",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white),)),
                  ),
                ),
                const SizedBox(height: 36,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}