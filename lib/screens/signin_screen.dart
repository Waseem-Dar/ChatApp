import 'package:chat_app/screens/createAccount_screen.dart';
import 'package:chat_app/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import '../widgets/user_widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}
bool checkBox = true;
TextEditingController nameController = TextEditingController();

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(
                 height: mq.height * .35,
                 child: Center(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const SizedBox(height: 40,),
                       Container(
                         height: 100,
                         width: 100,
                         decoration: const BoxDecoration(
                           image: DecorationImage(image: AssetImage("assets/images/logoIcon.png"))
                         ),
                       ),
                       const SizedBox(height: 10,),
                       Image.asset("assets/images/appName.png",width: 102,),
                       const SizedBox(height: 5,),
                       Text("Inspiring Empowerment",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,fontSize: 13,color: const Color(0xFF0F2C43)),) ,
                     ],
                   ),
                   // height: 100,
                 ),
               ),
              Container(
                height: mq.height *.65,
                width: mq.width,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(242, 247, 250, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 33),
                  child: Column(
                    children: [
                      Text("Sign In", style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 60,),
                      UserWidget.labelText("Email"),
                      UserWidget.textField(nameController, "Email"),
                      const SizedBox(height: 10,),
                      UserWidget.labelText("Password"),
                      SizedBox(
                        height: 36,
                        child: TextFormField(
                          style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color:const Color(0xFF6C6C6C) ),
                          cursorColor: Colors.grey,
                          obscureText: true,
                          cursorWidth: 1,
                          decoration: InputDecoration(
                            hintText: "password",
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
                              suffixIcon: Container(
                                margin: const EdgeInsets.all(10),
                                width: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/hide.jpg",),),),),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 15,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 16,
                              height: 16,
                              child: Transform.scale(
                                scale: 0.6,
                                child: Checkbox(
                                  visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                                  fillColor: const MaterialStatePropertyAll(Color(0xFF595959)),
                                  value:checkBox , onChanged: (newValue) {
                                  checkBox = newValue!;
                                  setState(() {});
                                },),
                              ),
                            ),
                            Text("Remember me",style: GoogleFonts.poppins(fontSize: 11),),
                            const Spacer(),
                            InkWell(
                                onTap:() {},
                                          child: Text("Forgot Password?",style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: const Color(0xFF5C90DC)),))
                          ],
                        ),
                      ),
                      const SizedBox(height: 35,),
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccountScreen(),));
                        },
                        child: Container(
                          width: 188,
                          height: 37,
                            decoration: BoxDecoration(
                                color: const Color(0xFF0D4A64),
                              borderRadius: BorderRadius.circular(25)
                            ),
                          child: Center(child: Text("Sign In",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white),)),
                        ),
                      ),
                      const SizedBox(height: 28,),
                     InkWell(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccountScreen(),));
                       },
                       child: Text.rich(TextSpan(
                         children: [
                           TextSpan(text: "Don’t have an account? ",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400)),
                           TextSpan(text: "Create Account",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: const Color(0xFF5E8EDA),)),
                         ]
                       )),
                     )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
