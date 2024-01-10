import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class AddLocationMap extends StatefulWidget {
  final void Function(LatLng)? onLocationSelected;
  const AddLocationMap({Key? key,this.onLocationSelected}) : super(key: key);

  @override
  State<AddLocationMap> createState() => AddLocationMapState();
}

class AddLocationMapState extends State<AddLocationMap> {
  final Completer<GoogleMapController> _controller = Completer();
   Set<Marker> _markers = {};
  late LatLng _initialCameraPosition;
  static late LatLng _selectedLocation;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _initialCameraPosition = const LatLng(37.42796133580664, -122.085749655962);
    _selectedLocation = _initialCameraPosition;
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
  }

  void _onLocationSelected(LatLng location) {
    setState(() {
      _markers.clear();
      _markers.add(
        Marker(
          markerId: const MarkerId('Selected Location'),
          position: location,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
      _selectedLocation = location;
    });
  }

  Future<void> _goToLocation(LocationData locationData) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(locationData.latitude!, locationData.longitude!),
          zoom: 15.0,
        ),
      ),
    );
  }

  Future<void> _getCurrentLocation() async {
    Location location = Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData? _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    _goToLocation(_locationData!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _initialCameraPosition,
          zoom: 14.0,
        ),
        onMapCreated: _onMapCreated,
        markers: _markers,
        onTap: (LatLng location) {
          setState(() {
            _selectedLocation = location;
            _markers = {
              Marker(
                markerId: MarkerId('selectedLocation'),
                position: location,
              ),
            };
          });
          if (widget.onLocationSelected != null) {
            widget.onLocationSelected!(_selectedLocation!);
          }
        },
        zoomControlsEnabled: false,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _getCurrentLocation(),
        backgroundColor: Colors.white,
        shape: const StadiumBorder(),
        mini: true,
        child: const Padding(
          padding: EdgeInsets.only(right: 1,bottom: 1),
          child: ImageIcon(AssetImage("assets/images/currentLocation.png"),color: Color(0xFF0D4A64),size: 22,),
        ),
      ),
    );
  }
}
