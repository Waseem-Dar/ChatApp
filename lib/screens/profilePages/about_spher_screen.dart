import 'package:flutter/material.dart';

class AboutSpherScreen extends StatelessWidget {
  const AboutSpherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 39),
        child: Column(children: [
          SizedBox(height: 75,),
          Icon(Icons.arrow_back_ios_rounded,size: 20,)
        ],),
      ),
    );
  }
}
