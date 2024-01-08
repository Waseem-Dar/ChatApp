import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Constant{
  static showToast(String title){
    Fluttertoast.showToast(
      msg: title,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: const Color(0xFF6C6C6C),
      textColor: Colors.white,
      fontSize: 10.0,
    );
  }
}