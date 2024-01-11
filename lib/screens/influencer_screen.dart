
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InfluencerScreen extends StatefulWidget {
  const InfluencerScreen({super.key});

  @override
  State<InfluencerScreen> createState() => _InfluencerScreenState();
}

final List<Map<String,dynamic>>  socialList = [
  {"image":"assets/images/facebookImage.png","title":"Facebook","subTitle":"join a female community!"},
  {"image":"assets/images/whatsappImage.png","title":"Whatsapp","subTitle":"Let us know what you are missing"},
  {"image":"assets/images/instagramImage.png","title":"Instagram","subTitle":"Follow & let us share your posts"},
  {"image":"assets/images/tiktokImage.png","title":"Tiktok","subTitle":"Follow & let us share your reels"},
];

class _InfluencerScreenState extends State<InfluencerScreen> {
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
                    Text('Influence',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 32,color: Colors.white),
                    ),

                    const SizedBox(height: 17,),

                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 30),
                  clipBehavior: Clip.hardEdge,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xFFF2F7FA),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                  ),
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics:const  NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      Map<String ,dynamic> list = socialList[index]  ;
                      String title = list["title"];
                      String subTitle = list["subTitle"];
                      String image = list["image"];
                     return Container(
                       // height: 55,
                       margin: const EdgeInsets.only(bottom: 6),
                       decoration: BoxDecoration(
                       color: Colors.white,
                         borderRadius: BorderRadius.circular(20)),
                       child: ListTile(
                         dense: true,
                         onTap: () {},
                         leading: Container(
                           height: 31,
                             width: 31,
                           decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage(image))
                           ),),
                         title: Text(title,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 12,),),
                         subtitle:Text(subTitle,style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color:  const Color(0xFF6C6C6C)),),
                       ),
                     );
                    },
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
