
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InfluencerScreen extends StatefulWidget {
  const InfluencerScreen({super.key});

  @override
  State<InfluencerScreen> createState() => _InfluencerScreenState();
}


class _InfluencerScreenState extends State<InfluencerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  children: [
                    const SizedBox(height: 91,),
                    Text('Influence',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 32,color: Colors.white),
                    ),

                    const SizedBox(height: 17,),

                  ],
                ),
              ),
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xFFF2F7FA),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: ImageIcon(AssetImage("assets/images/facebookImage.png")),
                        title: Text("Facebook"),
                        subtitle: Text("Join a female community!"),
                      )
                    ],
                  )

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
