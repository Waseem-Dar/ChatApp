import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({super.key});

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return greenMessageImage();
  }
}


Widget greenMessage(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  width: 215,
                  margin: EdgeInsets.only(bottom: 4),
                  padding: const EdgeInsets.only(right: 12,left: 15,top: 15,bottom: 15),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(13, 74, 100, 1),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                  ),
                  child:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w300,fontSize: 10,color: Colors.white,),
                  textAlign: TextAlign.justify,),
                ),
              ),
              Text("12.05",style: GoogleFonts.poppins(fontSize: 8,fontWeight: FontWeight.w500,letterSpacing: 0.24),)
            ],
          ),
        ),

      ],
    ),
  );
}


Widget whiteMessage(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  width: 215,
                  margin: EdgeInsets.only(bottom: 4),
                  padding: const EdgeInsets.only(right: 15,left: 12,top: 15,bottom: 15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  child:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w300,fontSize: 10,color: Color(0xFF6C6C6C),),
                    textAlign: TextAlign.justify,),
                ),
              ),
              Text("12.05",style: GoogleFonts.poppins(fontSize: 8,fontWeight: FontWeight.w500,letterSpacing: 0.24),)
            ],
          ),
        ),
        SizedBox(),
      ],
    ),
  );
}


Widget greenMessageImage(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  width: 181,
                  margin: EdgeInsets.only(bottom: 4),
                  padding: const EdgeInsets.only(right: 12,left: 15,top: 15,bottom: 15),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(13, 74, 100, 1),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                  ),
                  child:Row(
                    children: [
                      ImageIcon(AssetImage("assets/images/fileIcon.png"),color: Colors.white,),
                      Column(
                        children: [
                          Text("Download Image"),
                          Text("2 MB"),
                        ],
                      ),
                      IconButton(
                          padding: EdgeInsets.zero,
                          visualDensity: VisualDensity(vertical: -4,horizontal: -4),
                          onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/downloadIcon.png"),color: Colors.white,))

                    ],
                  )
                ),
              ),
              Text("12.05",style: GoogleFonts.poppins(fontSize: 8,fontWeight: FontWeight.w500,letterSpacing: 0.24),)
            ],
          ),
        ),

      ],
    ),
  );
}


