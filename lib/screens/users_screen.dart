import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: FloatingActionButton(
            onPressed: (){},
          shape: StadiumBorder(),
          backgroundColor: const Color(0xFF0D4A64),
        child: const ImageIcon(AssetImage("assets/images/addUserIcon.png"),color: Colors.white,),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 468,
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF7CB7CC), Color(0xFF0D4A64)],
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: Column(
                  children: [
                    const SizedBox(height: 51,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Chats',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 32,color: Colors.white),
                        ),
                        const ImageIcon(AssetImage("assets/images/notificationIcon.png"),color: Colors.white,)
                      ],
                    )
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
