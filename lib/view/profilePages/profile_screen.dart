import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about_spher_screen.dart';
import 'legal_info_screen.dart';
import 'my_contacts_screen.dart';
import 'my_places_screen.dart';
import 'my_profile_screen.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

//Notification Tile Switch Button status
bool status = true;
// ScrollBarController
final ScrollController verticalScroll = ScrollController();

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 468,
            decoration:  const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF7CB7CC), Color(0xFF0D4A64)],
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  children: [
                    const SizedBox(height: 91,),
                    Text('My Spher',style: GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:32,color:Colors.white),),
                    const SizedBox(height: 17,),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xFFF2F7FA),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                  ),
                  child: Scrollbar(
                    controller: verticalScroll,
                    thickness:1,
                    child: SingleChildScrollView(
                      controller: verticalScroll,
                      physics: const BouncingScrollPhysics(),
                      padding:const EdgeInsets.symmetric(horizontal: 25 ,vertical: 23),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 88,
                            width: 88,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/menImage.png"),
                            ),
                          ),
                          Text("Lorem Ipsum",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 17,color: const Color(0xFF0D4A64),height: 3),),
                          SizedBox(
                            width: double.infinity,
                            child: Text("My Profile",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, height: 2.5),),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 12,right: 21),
                            height: 74,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(19)
                            ),
                            child: Center(
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProfileScreen(),));},
                                contentPadding:  const EdgeInsets.symmetric(horizontal: 0),
                                leading: const ImageIcon(AssetImage("assets/images/userIcon.png"),size: 25,),
                                title: Text("My Profile",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                                subtitle: Text("Tap to edit your profile",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                                trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0D4A64),size: 15,),
                              ),
                            ),),
                          const SizedBox(height: 13,),
                          SizedBox(
                            width: double.infinity,
                            child: Text("My Spher Settings",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, height: 2.5),),
                          ),
                          Container(
                            height: 139,
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 12,right: 21),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Center(child: Column(
                              children: [
                                SizedBox(
                                  height: 69,
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyContactsScreen(),));},
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                                    leading: const ImageIcon(AssetImage("assets/images/contact-book.png"),size: 25,),
                                    title: Text("My Contacts",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                                    subtitle: Text("Manage your contacts",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                                    trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0D4A64),size: 15,),
                                  ),),
                                const Divider(indent: 5, color: Color(0x49929292), height: 0,),
                                SizedBox(
                                  height: 69,
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const  MyPlacesScreen(),));},
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                                    leading: const ImageIcon(AssetImage("assets/images/placeholder.png"),size: 25,),
                                    title: Text("My Places",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                                    subtitle: Text("Add/Edit your favourite places",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                                    trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0D4A64),size: 15,),
                                  ),),
                              ],
                            ),),
                          ),
                          const SizedBox(height: 13,),
                          SizedBox(
                            width: double.infinity,
                            child: Text("Other Settings",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, height: 2.5),),
                          ),
                          Container(
                            height: 190,
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 12,right: 21),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Center(child: Column(
                              children: [
                                SizedBox(
                                  height: 69,
                                  child: ListTile(
                                    onTap: () {},
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                                    leading: const ImageIcon(AssetImage("assets/images/bell-1.png"),size: 25,),
                                    title: Text("Notifications",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                                    subtitle: Text("Turn on/off notifications",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF6C6C6C)),),
                                    trailing: Transform.scale(
                                      scaleY:0.6,
                                      scaleX: 0.6,
                                      alignment: Alignment.centerRight,
                                      child: Switch(
                                        activeTrackColor: const Color(0xFF0D4A64),
                                        value: status,
                                        onChanged: (value) {
                                          setState(() {
                                            status = value;
                                          });
                                        },),
                                    ),
                                  ),),
                                const Divider(indent: 5, color: Color(0x49929292), height: 0,),
                                SizedBox(
                                  height: 57,
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LegalInfoScreen(),));},
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                                    leading: const ImageIcon(AssetImage("assets/images/balance.png"),size: 25,),
                                    title: Text("Legal",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                                    trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0D4A64),size: 15,),
                                  ),),
                                const Divider(indent: 5, color: Color(0x49929292), height: 0,),
                                SizedBox(
                                  height: 57,
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutSpherScreen(),));},
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                                    leading: const ImageIcon(AssetImage("assets/images/about-tile-icon.png"),size: 25,color:Color(0xFF0D4A64) ,),
                                    title: Text("About Spher",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64),),),
                                    trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0D4A64),size: 15,),
                                  ),),
                              ],
                            ),),
                          ),
                          const SizedBox(height: 28,),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 174,
                              height: 36,
                              decoration: BoxDecoration(
                                  color:  Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(child: Text("Sign Out",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:  const Color(0xFF0D4A64)),)),
                            ),
                          ),
                          Text("v0.3.1",style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w300,color: Colors.black,height: 2),)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}