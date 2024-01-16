
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

 static final List<Place> places = [
    Place(name: "CBR", latLng: const LatLng(33.6881665, 73.1758258)),
    Place(name: "Faizabad", latLng: const LatLng(33.6505198, 73.0672713)),
    Place(name: "Office", latLng: const LatLng(33.5510926, 73.1237477)),
  ];

  static List<Map<String, dynamic>> allUser = [
    {
      "name": "Alice Burger",
      "msg": "Hello there!",
      "time": "09:30",
      "image":"assets/images/menImage.png"
    },
    {
      "name": "Bob Lal",
      "msg": "Hi, how are you?",
      "time": "15:20",
      "image":"assets/images/menImage.png"
    },
    {
      "name": "Charlie Cheap",
      "msg": "Good morning!",
      "time": "08:45",
      "image":"assets/images/menImage.png"
    },
    {
      "name": "David Warner",
      "msg": "What's up?",
      "time": "12:10",
      "image":"assets/images/menImage.png"
    },
    {
      "name": "Emma Adian",
      "msg": "See you later! Thank You",
      "time": "17:55",
      "image":"assets/images/menImage.png"
    }
  ];



  static Widget labelText(String label){
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: double.infinity,
      child: Text(label,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            height: 2.5
        ),

      ),
    );
  }

}


class Place {
  String name;
  LatLng latLng;
  Place({required this.name, required this.latLng});
}

