import 'package:chat_app/screens/usersPages/chat_user_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/message_card.dart';

class ChatScreen extends StatefulWidget {

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32,right: 28),
                  child: Column(
                    children: [
                      const SizedBox(height: 47,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         IconButton(
                             onPressed: (){
                               Navigator.pop(context);
                             },
                             alignment: Alignment.centerLeft,
                             visualDensity: const VisualDensity(horizontal: -4),
                             icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 20,)),
                         const SizedBox(
                           height: 46,
                           width: 46,
                           child: CircleAvatar(
                             backgroundImage: AssetImage("assets/images/menImage.png"),
                           ),
                         ),
                           InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatUserDetailsScreen(),));
                            },
                              child: const Icon(Icons.more_vert_rounded,color: Colors.white,))
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Text("Lorem Ipsum",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
                      const SizedBox(height: 25,),

                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      height: double.infinity,
                    clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF2F7FA),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                      ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Column(
                        children: [
                          Expanded(
                              child: ListView.builder(
                                padding: const EdgeInsets.only(top: 20),
                                  itemCount:10,
                                   itemBuilder: (context, index) {
                                    return  MessageCard(index: index,);
                                     },)),
                          Container(
                            height: 51,
                            decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                              child: Row(
                                children: [
                                  IconButton(
                                      padding:EdgeInsets.zero,
                                      visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                                      onPressed: (){}, icon: const ImageIcon(AssetImage("assets/images/folderIcon.png"),)),
                                  const VerticalDivider(
                                    endIndent: 10,
                                    indent: 10,
                                  ),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextFormField(
                                      cursorColor: Colors.grey,
                                      textAlign: TextAlign.justify,
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      maxLines: 3,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.zero,
                                        hintText: "Write a message...",
                                        hintStyle: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic,),
                                        border:InputBorder.none
                                      ),
                                    ),
                                  )),
                                  IconButton(
                                      padding:EdgeInsets.zero,
                                      visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                                      onPressed: (){}, icon: const ImageIcon(AssetImage("assets/images/sendIcon.png"),))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
