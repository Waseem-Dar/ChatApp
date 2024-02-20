 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Constant{

  static void showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Center(child: Text(msg,style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color:const Color(0xFF0D4A64) ),)),
      backgroundColor: Colors.white,
      elevation: 1,
      padding: const EdgeInsets.symmetric(vertical: 8),
      duration: const Duration(seconds: 2 ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      width: 168,
    ));
  }

 static final List<Place> places = [
    Place(name: "CBR", latLng: const LatLng(33.6881665, 73.1758258)),
    Place(name: "Faizabad", latLng: const LatLng(33.6505198, 73.0672713)),
    Place(name: "Office", latLng: const LatLng(33.5510926, 73.1237477)),
  ];

  static List<Map<String, dynamic>> allUser = [
    {"name": "Alice Burger", "msg": "Hello there!", "time": "09:30", "image":"assets/images/menImage.png"},
    {"name": "Bob Lal", "msg": "Hi, how are you?", "time": "15:20", "image":"assets/images/menImage.png"},
    {"name": "Charlie Cheap", "msg": "Good morning!", "time": "08:45", "image":"assets/images/menImage.png"},
    {"name": "David Warner", "msg": "What's up?", "time": "12:10", "image":"assets/images/menImage.png"},
    {"name": "Emma Adian", "msg": "See you later! Thank You", "time": "17:55", "image":"assets/images/menImage.png"}
  ];

  static String firstString = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation";
  static String secondString = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non ";
}

class Place {
  String name;
  LatLng latLng;
  Place({required this.name, required this.latLng});
}

