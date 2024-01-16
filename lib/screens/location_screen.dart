import 'dart:async';
import 'package:chat_app/screens/send_location_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationScreen extends StatefulWidget {
  final void Function(LatLng)? onLocationSelected;
  const LocationScreen({super.key,this.onLocationSelected});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  bool isMapSatellite = false;
  bool isExpanded = false;

  final Completer<GoogleMapController> controller0 = Completer();
  Set<Marker> markers = {};
  late LatLng initialCameraPosition;
  static late LatLng selectedLocation;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    initialCameraPosition = const LatLng(37.42796133580664, -122.085749655962);
    selectedLocation = initialCameraPosition;
  }

  Future<void> onMapCreated(GoogleMapController controller) async {
    controller0.complete(controller);
  }


  Future<void> goToLocation(LocationData locationData) async {
    final GoogleMapController controller = await controller0.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(locationData.latitude!, locationData.longitude!),
          zoom: 16.0,
        ),
      ),
    );
  }

  Future<void> getCurrentLocation() async {
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData? locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();
    goToLocation(locationData);
  }

  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
             zoomControlsEnabled: false,
              mapType: isMapSatellite ?MapType.hybrid:MapType.normal,
              initialCameraPosition: CameraPosition(
                target: initialCameraPosition,
                zoom: 14.0,
              ),
              onMapCreated: onMapCreated,
              markers: markers,
              onTap: (LatLng location) {
                setState(() {
                  selectedLocation = location;
                  markers = {
                    Marker(
                      markerId: const MarkerId('selectedLocation'),
                      position: location,
                    ),
                  };
                });
                if (widget.onLocationSelected != null) {
                  widget.onLocationSelected!(selectedLocation);
                }
              },
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
            ),
            Container(
              height: 206,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: [Colors.white, Colors.white.withOpacity(0)],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 55,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     InkWell(
                       onTap:() {
                         setState(() {
                           isMapSatellite = !isMapSatellite;
                         });
                       },
                       child: Container(
                         width: 30,
                         height: 30,
                         decoration: const ShapeDecoration(
                           color: Colors.white,
                           shape: OvalBorder(),
                           shadows: [
                             BoxShadow(
                               color: Color(0x11000000),
                               blurRadius: 4,
                               offset: Offset(2, 2),
                               spreadRadius: 0,
                             )
                           ],
                         ),
                         child: const Center(child: ImageIcon(AssetImage("assets/images/satelliteMapIcon.png"),size: 20,color:  Color(0xFF0D4A64),)),
                       ),
                     ),
                      Text("EXPLORE",style: GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w600,color:const  Color(0xFF0D4A64)),),
                      InkWell(
                        onTap: () {
                          getCurrentLocation();
                        },
                        child: Container(
                          width: 29,
                          height: 29,
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x11000000),
                                blurRadius: 4,
                                offset: Offset(2, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Center(child: ImageIcon(AssetImage("assets/images/currentLocation.png"),size: 20,color:  Color(0xFF0D4A64),)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 23,
                    margin: const EdgeInsets.only(top: 15,left: 6),
                    child: TextFormField(
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),
                      cursorColor: Colors.white,
                      cursorWidth: 1,
                      cursorHeight: 12,
                      decoration:  InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFF0D4A64),
                        hintText: "Search..",
                        hintStyle: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.white,fontStyle:FontStyle.italic ),
                        contentPadding: const EdgeInsets.only(bottom: 5,left: 15),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                        suffixIconConstraints: const BoxConstraints(),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.5,horizontal: 5),
                          child: ImageIcon(
                            AssetImage("assets/images/searchIcon.png"),color: Colors.white,),
                        ),


                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: Container(
          height: 40,
          width: isExpanded?220:40,
          child: FloatingActionButton.extended(
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            shape: const StadiumBorder(),
            backgroundColor:const Color(0xFF0D4A64),
            icon:  const Padding(
              padding: EdgeInsets.only(left: 10),
              child: ImageIcon(AssetImage("assets/images/shareLocationIcon.png"),color: Colors.white,size: 20,),
            ),
            label:isExpanded ? InkWell(
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SendLocationScreen(latLng: selectedLocation),));
              },
              child: AnimatedContainer(
                height: 40,
                duration: const Duration(milliseconds: 300),
                child: Center(
                  child: Text(
                     ' Share my location with my Spher',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),
                  ),
                ),
              ),
            ):const SizedBox(),
          ),
        ),
      ),
    );
  }
}



