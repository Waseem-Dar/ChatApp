import 'dart:developer';
import 'package:chat_app/widgets/constant.dart';
import 'package:chat_app/widgets/add_location_map.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../widgets/user_widgets.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}
TextEditingController nameController = TextEditingController();
class _AddPlaceScreenState extends State<AddPlaceScreen> {
  LatLng? _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const  Color(0xFFF2F7FA),
         body:SingleChildScrollView(
       child: Column(
         children: [
           const SizedBox(height:62,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 IconButton(
                     onPressed: (){
                       Navigator.pop(context);
                     }, icon: const Icon(Icons.arrow_back_ios_new_rounded,size: 20,)),
                 Text("Add new place",style: GoogleFonts.poppins(
                     fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),textAlign: TextAlign.center,),
                  const SizedBox(width: 30,),
               ],
             ),
           ),
           const SizedBox(height: 50,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: SizedBox(
               width: double.infinity,
               child: Text("Your places will be accessible to you when sharing your destination",
                 style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const  Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
             ),
           ),
           Container(
             margin: const EdgeInsets.symmetric(vertical: 17),
             width: double.infinity,
             height: 257,
             child:  AddLocationMap(
               onLocationSelected: (LatLng location) {
                 setState(() {
                   _selectedLocation = location;
                 });
               },
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Column(
               children: [
                 UserWidget.labelText("Name your place"),
                 UserWidget.textField(nameController, "e.g Home"),
               ],
             ),
           ),
           const SizedBox(height: 35,),
           UserWidget.mainButton( () {
             log("click");
             if(_selectedLocation != null){
              final place = Place(name: nameController.text.toString(), latLng: _selectedLocation!);
              if(nameController.text.isEmpty ) {
                Constant.showSnackBar(context, "Enter place name");
              }else{
                 Constant.places.add(place);
                 nameController.clear();
                 Constant.showSnackBar(context, "Place added");
              }
             }else{
               Constant.showSnackBar(context, "Select location");
             }
           },
               "Save place",const Color(0xFF0D4A64), Colors.white, 16),
           const SizedBox(height: 30,)
         ],
       ),
         ) ,
      ),
    );
  }
}