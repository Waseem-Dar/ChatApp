import 'package:chat_app/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DeletePlaceScreen extends StatefulWidget {
  final LatLng latLng;
  final String placeName;
  const DeletePlaceScreen({super.key,required this.latLng,required this.placeName});

  @override
  State<DeletePlaceScreen> createState() => _DeletePlaceScreenState();
}



class _DeletePlaceScreenState extends State<DeletePlaceScreen> {
 LatLng _desiredLocation = const LatLng(33.6881665, 73.1758258);
  // late LatLng _desiredLocation;

  @override
  void initState() {
    super.initState();
    _desiredLocation = widget.latLng;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF2F7FA),
      body: Column(
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
          const SizedBox(height: 55,),
          Container(
            margin: const  EdgeInsets.symmetric(vertical: 20),
            height: 257,
            width: double.infinity,
            // color: Colors.red,
            child: GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                target: _desiredLocation,
                zoom: 14.0,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId('SelectedLocation'),
                  position: _desiredLocation,
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                    width:double.infinity,
                    child: Text(widget.placeName,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.left,),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor in",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:const  Color(0xFF6C6C6C)),textAlign: TextAlign.justify,)
              ],
            ),
          ),
          const SizedBox(height: 35,),
          InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () {
            },
            child: Container(
              width: 174,
              height: 36,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Center(child: Text("Delete Place",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 16,color: const Color(0xFFFF0000)),)),
            ),
          ),
        ],
      ),
    );
  }
}
