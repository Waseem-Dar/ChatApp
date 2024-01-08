
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import '../../widgets/constant.dart';

class MyContactsScreen extends StatefulWidget {
  const MyContactsScreen({super.key});

  @override
  State<MyContactsScreen> createState() => _MyContactsScreenState();
}
int _tabTextIndexSelected = 0;
int _requestLength = 2;
class _MyContactsScreenState extends State<MyContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFF2F7FA),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.5),
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
                  Text("My Contacts",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),textAlign: TextAlign.center,),
                 InkWell(
                   borderRadius: BorderRadius.circular(12),
                   onTap: () {},
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
                 )
                ],
              ),
              const SizedBox(height: 40,),
              SizedBox(
                  height: 36,
                  // width: 174,
                child: ElevatedButton(

                    onPressed: (){
                      _showDialog();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0D4A64),
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
                      minimumSize:Size(174, 36),
                      maximumSize: Size(190, 36)
                    ),
                    child: Text("Designate a Guardian",style: GoogleFonts.poppins(
                    fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),textAlign: TextAlign.center,)),
              ),
              const SizedBox(height: 30,),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 15.5),
                child: Text("Friend Requests",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,fontSize: 13,color: Colors.black),textAlign: TextAlign.left,),
              ),
              const SizedBox(height: 10,),
              FlutterToggleTab(

                width: 51,
                borderRadius: 30,
                height: 30,
                selectedIndex: _tabTextIndexSelected,
                unSelectedBackgroundColors: const [Colors.white],
                selectedBackgroundColors: const [Color(0xFF0D4A64)],
                selectedTextStyle:  GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.white,),
                unSelectedTextStyle: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.black,),
                labels: const ["Received","Sent"],
                selectedLabelIndex: (index) {
                  setState(() {
                    _tabTextIndexSelected = index;
                  });
                },
                isScroll:false,
              ),

              _tabTextIndexSelected ==  0 ?Container(
                margin: const EdgeInsets.only(top: 20,bottom: 27),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(19)
                ),
                child:_requestLength  > 0?
                ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  itemCount: _requestLength,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return  Column(
                      children: [
                        ListTile(
                          contentPadding:const EdgeInsets.symmetric(vertical: 0),
                          leading: const SizedBox(height: 34,width: 34,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/menImage.png"),
                              )),
                          title: Text("Lorem Ipsum",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
                          subtitle: Text("@Loremipsum001",style: GoogleFonts.poppins(
                              fontSize: 10,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min ,

                            children: [
                              InkWell(
                                onTap:() {
                                  Constant.showToast("Request Rejected");
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  margin: const EdgeInsets.only(right: 3),
                                  height: 18,
                                  width: 18,
                                  decoration: const ShapeDecoration(
                                    shape:OvalBorder(side: BorderSide(color: Color(0xFF6C6C6C)),),
                                  ),
                                  child: const ImageIcon(AssetImage("assets/images/xIcon.png")),
                                ),
                              ),
                              InkWell(
                                onTap:() {
                                  Constant.showToast("Request Accepted");
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(3),
                                  height: 18,
                                  width: 18,
                                  decoration: const ShapeDecoration(
                                    shape:OvalBorder(side: BorderSide(color: Color(0xFF6C6C6C)),),
                                  ),
                                  child: const ImageIcon(AssetImage("assets/images/checkIcon.png")),
                                ),
                              )
                            ],
                          ),
                        ),
                        index == _requestLength-1?const SizedBox():const Divider(height: 0,color: Color(0x49929292),),
                      ],
                    );
                  },
                ):const SizedBox.shrink(),
              ):const SizedBox(),
              _tabTextIndexSelected ==  0 ?Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 15.5),
                child: Text("My Contacts",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,fontSize: 13,color: Colors.black),textAlign: TextAlign.left,),
              ):const SizedBox(),
              _tabTextIndexSelected == 0 ? Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10,bottom: 30),
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19)
                ),
                child:_requestLength  > 0?
                ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  itemCount: _requestLength,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return  Column(
                      children: [
                        ListTile(
                          contentPadding:const EdgeInsets.symmetric(vertical: 0),
                          leading: const SizedBox(height: 34,width: 34,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/menImage.png"),
                              )),
                          title: Text("Lorem Ipsum",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
                          subtitle: Text("@Loremipsum001",style: GoogleFonts.poppins(
                              fontSize: 10,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                        ),
                        index == _requestLength-1?const SizedBox():const Divider(height: 0,color: Color(0x49929292),),
                      ],
                    );
                  },
                ):const SizedBox.shrink(),
              ): const SizedBox(),
              _tabTextIndexSelected == 1 ? Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20,bottom: 30),
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19)
                ),
                child:_requestLength  > 0?
                ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  itemCount: _requestLength,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return  Column(
                      children: [
                        ListTile(
                          contentPadding:const EdgeInsets.symmetric(vertical: 0),
                          leading: const SizedBox(height: 34,width: 34,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/menImage.png"),
                              )),
                          title: Text("Lorem Ipsum",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
                          subtitle: Text("@Loremipsum001",style: GoogleFonts.poppins(
                              fontSize: 10,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),textAlign: TextAlign.justify,),
                          trailing: InkWell(
                            onTap:() {},
                            child: Container(
                              width: 72,
                              height: 14,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 0.50, color: Color(0xFF6C6C6C)),
                                  borderRadius: BorderRadius.circular(5.50),
                                ),
                              ),
                              child: Center(child: Text("Request Sent",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,fontSize: 8,color: const Color(0xFF6C6C6C),),textAlign: TextAlign.center,)),
                            ),
                          ),
                        ),
                        index == _requestLength-1?const SizedBox():const Divider(height: 0,color: Color(0x49929292)),
                      ],
                    );
                  },
                ):const SizedBox.shrink(),
              ): const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }


  void _showDialog(){
    showDialog(
      // barrierColor: Colors.black.withOpacity(0.30000001192092896),
        context: context, builder: (_) => AlertDialog(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              shadowColor: const Color(0x3F000000),
              insetPadding: const EdgeInsets.symmetric(horizontal: 30),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
              title: Text("Designate a Guardian",style: GoogleFonts.poppins(
          fontSize: 15,fontWeight: FontWeight.w500,color: const Color(0xFF0D4A64)),textAlign: TextAlign.center,),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              actionsAlignment: MainAxisAlignment.center,
              actionsPadding: EdgeInsets.zero,titlePadding:const EdgeInsets.symmetric(vertical: 20) ,
              content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
            children: [
              TextSpan(text: "Make any of your trusted contacts your Guardian who will always be informed when you press ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
              TextSpan(
                onEnter: (event) {
                  // Navigator.pop(context);
                },
                onExit: (event) {
                  Navigator.pop(context);
                },
                text: "Help Button",style: GoogleFonts.poppins(
                  fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xFF5C90DC)),),

            ]
          )),
          const SizedBox(height: 10,),
          const Divider(height: 0,color: Color(0x49929292),)
        ],
              ),
              actions: [
        TextButton(
            onPressed: (){
          Navigator.pop(context);
        }, child: Text("Got it",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15,color:const Color(0xFF5C90DC)),))
              ],
            ));
  }
}
