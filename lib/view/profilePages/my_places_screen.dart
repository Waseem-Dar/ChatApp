import 'package:chat_app/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'add_new_place_screen.dart';
import 'delete_place_screen.dart';

class MyPlacesScreen extends StatefulWidget {
  const MyPlacesScreen({super.key});

  @override
  State<MyPlacesScreen> createState() => _MyPlacesScreenState();
}

class _MyPlacesScreenState extends State<MyPlacesScreen> {

  @override
  void initState() {
    super.initState();
    getPlacesStream();
  }
  Stream<List<Place>> getPlacesStream() async* {
    await Future.delayed(const Duration(microseconds: 500));
    yield Constant.places;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xFFF2F7FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 22,right: 27),
          child: Column(
            children: [
              const SizedBox(height: 62,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back_ios_new_rounded,size: 20,)),
                  Text("My Places",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),textAlign: TextAlign.center,),
                  InkWell(
                    borderRadius: BorderRadius.circular(12),
                    overlayColor: const MaterialStatePropertyAll(Colors.transparent),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPlaceScreen(),));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0D4A64),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(child: ImageIcon(AssetImage("assets/images/addIcon.png"),size: 12,color: Colors.white,),),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              Text("Your places will be accessible to you when sharing your destination",
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: const  Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
              // Constant.places.isNotEmpty?
              SizedBox(
                width: double.infinity,
                child: StreamBuilder(
                    stream: getPlacesStream(),
                    builder: (context, snapshot) {
                      if(snapshot.connectionState == ConnectionState.waiting){
                        return const Center(child: CircularProgressIndicator(color: Color(0xFF0D4A64),),);
                      }else if(snapshot.hasError){
                        return const Center(child: Text("Error"),);
                      }else if(!snapshot.hasData || snapshot.data!.isEmpty){
                        return  SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * .7,
                          child: Center(child: SizedBox(
                              width: 117,
                              child: Text("You have no places yet",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,fontSize: 16,color: const  Color(0xFF6C6C6C)),textAlign:TextAlign.center,))),);
                      }else{
                        return  ListView.builder(
                        itemCount: Constant.places.length,
                          shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          Place place = Constant.places[index];
                          String name = place.name;
                          LatLng latLng = place.latLng;
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: ListTile(
                            onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DeletePlaceScreen(
                                      index: index,
                                      latLng: latLng,
                                      placeName: name,
                                    ),
                                  ),
                                );
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
                            tileColor: Colors.white,
                            leading: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              ImageIcon(AssetImage("assets/images/dot.png"),size: 11,color: Color(0xFF0D4A64),),
                              ImageIcon(AssetImage("assets/images/Line.png"),size: 13,color: Color(0xFF0D4A64),),
                            ]),
                            title: Text(name,style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: const  Color(0xFF0D4A64)),),
                            subtitle:Text("Tap to see more",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color:  const Color(0xFF6C6C6C)),),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFF0D4A64),size: 15,),
                          ),
                        );
                      },);
                      }
                    },),
              )
            ],
          ),
        ),
      ),
    );
  }
}