import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SendLocationScreen extends StatefulWidget {
  final LatLng latLng;
  const SendLocationScreen({super.key,required this.latLng});

  @override
  State<SendLocationScreen> createState() => _SendLocationScreenState();
}

List<String> timeList = ["15 Minutes","1 Hour","8 Hour",];
int selectedIndex = -1;

class _SendLocationScreenState extends State<SendLocationScreen> {

  LatLng _desiredLocation = const LatLng(33.6881665, 73.1758258);

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
          const SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios_outlined,size: 20,)),
                Text("Send Location",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
                const SizedBox(width: 30,),
              ],
            ),
          ),
          const SizedBox(height: 50,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text("Input your final destination so you can easily share it with your SPHER. Your contacts will receive push notifications once you arrive.",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
          ),
          const SizedBox(height: 25,),
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: GoogleMap(
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: _desiredLocation,
                      zoom: 16.0,
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
                Positioned(
                  top: 35,
                    right: 15,
                    child:Container(
                      decoration: BoxDecoration(
                      color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      width: 32,
                      child: Column(
                        children: [
                          MaterialButton(
                              onPressed: (){
                                _showBottom();
                              },
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            visualDensity: const VisualDensity(horizontal: -3,),
                              color: Colors.white,
                            child: const ImageIcon(AssetImage("assets/images/informationIcon.png"),size: 20,color:Color(0xFF0D4A64)),
                          ),
                           const Divider(height: 1,color:  Color(0x49929292),),
                          MaterialButton(
                            onPressed: (){
                              showDestinationDialog();
                              // Navigator.push(context, MaterialPageRoute(builder:  (context) => const ContactShareLocationScreen(),));
                            },
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))),
                            visualDensity: const VisualDensity(horizontal: -3,),
                            color: Colors.white,
                            child: const ImageIcon(AssetImage("assets/images/sendLocationIcon.png"),size: 17,color: Color(0xFF0D4A64),),
                          ),
                        ],
                      ),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void _showBottom(){
    showModalBottomSheet(
      context: context,
      shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      builder:  (_) {
      return
        StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
            return Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 30,),
                      Text("Choose Duration",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),),
                      MaterialButton(
                        minWidth: 23,
                          height: 23,
                          visualDensity: const VisualDensity(horizontal: -3),
                          onPressed: (){
                          selectedIndex = -1;
                          Navigator.pop(context);
                          },
                      shape: const StadiumBorder(),
                        color: const Color(0xFF0D4A64),
                        child: const ImageIcon(AssetImage("assets/images/xIcon.png"),color: Colors.white,size: 14,),
                      )
                    ],
                  ),
                ),
                Text("(Accurate to 25 m)",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:const Color(0xFF6C6C6C)),textAlign: TextAlign.center,),
                ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  itemCount: timeList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      setState(() {
                        if (selectedIndex == index) {
                          selectedIndex = -1;
                        } else {
                          selectedIndex = index;
                        }
                      });
                    },
                    child: Container(
                      color: selectedIndex == index ? const Color(0xFFF3F7FA) : Colors.white,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      height: 32,
                      child: Center(child: Text(timeList[index],style:selectedIndex == index?
                      GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.black)
                          :GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),),),
                    ),
                  );
                },),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: (){
                        selectedIndex = 1;
                        Navigator.pop(context);

                      },
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0D4A64),),
                      child: Text("Share with destination",style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)),
                ),
                const SizedBox(height: 20,)
              ],
              ),
            );
          }
        );
    },);
  }

  void showDestinationDialog(){
    showDialog(context: context, builder: (_) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 30),
      contentPadding: const EdgeInsets.only( right: 20,left: 20,top: 24,bottom: 0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Are you sure you don't want to add your Destination?",
            style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color:const Color(0xFF0D4A64)),textAlign: TextAlign.center,),
          const SizedBox(height: 10,) ,
          Text("Your contacts will not get notified once you arrive.",
            style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),textAlign: TextAlign.center,),

          const SizedBox(height: 15,),
          const Divider(
            height:1,
            color: Color(0xFF939393),
          ),
        ],
      ),
      actionsPadding:  EdgeInsets.zero,
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, child: Text("Cancel",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15,color: const Color(0xFF6C6C6C)),)),
        const SizedBox(height:50,child: VerticalDivider(color: Color(0xFF939393),width: 1,endIndent: 15,)),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Continue",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15,color: const Color(0xFF5C90DC)),))
      ],
    ));
  }
}

