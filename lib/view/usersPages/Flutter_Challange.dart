import 'package:flutter/material.dart';

class FlutterChallenge extends StatefulWidget {
  const FlutterChallenge({super.key});

  @override
  State<FlutterChallenge> createState() => _FlutterChallengeState();
}

class _FlutterChallengeState extends State<FlutterChallenge> {
  int clickCount = 0;
  void toggleColors() {
    setState(() {
      clickCount = (clickCount + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color buttonColor;
    Color textColor;

    if (clickCount == 0) {
      backgroundColor = Colors.black;
      buttonColor = Colors.orange;
      textColor = Colors.white;
    } else if (clickCount == 1) {
      backgroundColor = Colors.white;
      buttonColor = Colors.black;
      textColor = Colors.orange;
    } else {
      backgroundColor = Colors.orange;
      buttonColor = Colors.white;
      textColor = Colors.black;
    }
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
          ),
          onPressed: toggleColors,
          child: Text(
            "Click",
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
