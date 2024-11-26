import 'dart:async';
import 'package:flutter/material.dart';
import 'auth_screens/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 3), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen(),));
   },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/logoIcon.png"))
              ),
            ),
            const SizedBox(height: 10,),
            Image.asset("assets/images/appName.png",width: 102,),
          ],
        ),
      ),
    );
  }
}
