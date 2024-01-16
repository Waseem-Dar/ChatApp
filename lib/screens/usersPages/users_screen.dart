import 'package:chat_app/screens/usersPages/chat_screen.dart';
import 'package:chat_app/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

                 // return stream dummy JsonData
Stream<List<Map<String, dynamic>>> getUserStream() async* {

  await Future.delayed(const Duration(microseconds: 500));
  yield Constant.allUser;
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: FloatingActionButton(
              onPressed: (){},
            shape: const StadiumBorder(),
            backgroundColor: const Color(0xFF0D4A64),
          child: const ImageIcon(AssetImage("assets/images/addUserIcon.png"),color: Colors.white,),
          ),
        ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 39),
                  child: Column(
                    children: [
                      const SizedBox(height: 51,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Chats',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 32,color: Colors.white),
                          ),
                          const ImageIcon(AssetImage("assets/images/notificationIcon.png"),color: Colors.white,)
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 18,
                              child: TextFormField(
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),
                                cursorColor: Colors.grey,
                                cursorWidth: 1,
                                cursorHeight: 12,
                                decoration:  InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromRGBO(255, 255, 255, 0.47),
                                  hintText: "Search",
                                  hintStyle: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.white),
                                  contentPadding: const EdgeInsets.only(bottom: 5),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(9),borderSide: BorderSide.none),
                                  prefixIcon: const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 3.5),
                                    child: ImageIcon(
                                      AssetImage("assets/images/searchIcon.png"),color: Colors.white,),
                                  ),
                                  prefixIconConstraints: const BoxConstraints(minWidth: 20),

                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5,),
                          IconButton(
                            alignment: Alignment.centerRight,
                              padding: EdgeInsets.zero,
                              visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                              onPressed: (){}, icon: const ImageIcon(AssetImage("assets/images/filterIcon.png"),color: Colors.white,size: 20,))
                        ],
                      ),
                      const SizedBox(height: 20,),

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
                    child:StreamBuilder(stream: getUserStream(), builder: (context, snapshot) {
                      if(snapshot.connectionState == ConnectionState.waiting){
                        return const Center(child: CircularProgressIndicator(),);
                      }else if(snapshot.hasError){
                        return const Center(child: Text("Error"),);
                      }else if(!snapshot.hasData || snapshot.data!.isEmpty){
                        return  Center(child: Text("No chats yet",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: const Color(0xFF6C6C6C)),),);
                      }else{
                        return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              padding: const EdgeInsets.only(top: 44),

                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                final user = snapshot.data![index];
                                return Column(
                                  children: [
                                    ListTile(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen(),));
                                      },
                                      contentPadding: EdgeInsets.zero,
                                      leading: ClipRRect(
                                        child: Image.asset("assets/images/menImage.png",width: 43,height: 43,),
                                      ),
                                      title: Text(user["name"],style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                                      subtitle: Text(user["msg"].toString(),style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 11,color:const Color(0xFF6C6C6C) ),maxLines: 1,),
                                      trailing: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width:40,
                                                child:  Text(user["time"].toString(),style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 11,color: const Color(0xFF929292)),textAlign: TextAlign.center,)),
                                            Container(
                                              margin:const EdgeInsets.only(top: 5),
                                              width: 17,
                                              height: 17,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFF0D4A64),
                                                shape: OvalBorder(),
                                              ),
                                              child: Center(child: Text("3",style: GoogleFonts.poppins(fontSize: 9,fontWeight: FontWeight.w500,color: Colors.white),)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Divider(height: 3,endIndent: 8,color:  Color(0x49929292),)
                                  ],
                                );
                              },)
                        );
                      }
                    },)
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
