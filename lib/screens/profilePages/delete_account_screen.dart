import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}
bool checkBox = true;

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFF2F7FA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const SizedBox(height: 62,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    visualDensity: const VisualDensity(horizontal: -4),
                  alignment: Alignment.centerLeft,
                    onPressed: (){
                    Navigator.pop(context);
                    }, icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 20,)),
                Text("Delete Account",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                const SizedBox(width: 30),
              ],
            ),
            const SizedBox(height: 24,),
            Text("Are you sure you want to delete your account?",
              style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black),textAlign: TextAlign.center,),
            const SizedBox(height: 15,),
            Text("This will delete your entire Spher account and contact lists. This Account can not be reversed.",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 11,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
            const SizedBox(height: 15,),
            Row(
              children: [
                Transform.scale(
                  scale: 0.6,
                  child: Checkbox(
                    visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                    fillColor: const MaterialStatePropertyAll(Color(0xFF595959)),
                    value:checkBox , onChanged: (newValue) {
                    checkBox = newValue!;
                  },),
                ),
                Text("I agree, delete my account permanently ",
                  style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),),
              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DeleteAccountScreen(),));
              },
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: 174,
                height: 36,
                decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Text("Delete Account",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12, color: const Color(0xFFFF0000)),textAlign: TextAlign.center,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
