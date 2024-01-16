import 'package:chat_app/screens/influencer_screen.dart';
import 'package:chat_app/screens/location_screen.dart';
import 'package:chat_app/screens/profilePages/profile_screen.dart';
import 'package:chat_app/screens/usersPages/users_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}
int _currentIndex = 0;
final List _tabs = [
  const LocationScreen(),
  const UsersScreen(),
  const InfluencerScreen(),
  const ProfileScreen(),
];
class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BottomNavigationBar(
          elevation: 0,
            unselectedIconTheme: const IconThemeData(color: Color.fromRGBO(108, 108, 108, 1)),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type:BottomNavigationBarType.fixed ,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items:  [
          BottomNavigationBarItem(label: 'location',
              icon: _currentIndex == 0?
                   const ImageIcon(AssetImage("assets/images/placeholder-2.png"),size:25,color: Color.fromRGBO(13, 74, 100, 1))
                  :const ImageIcon(AssetImage("assets/images/placeholder.png"),size: 25,)),
          BottomNavigationBarItem(label: 'Users',
              icon: _currentIndex == 1?
                   const ImageIcon(AssetImage("assets/images/bubble-chat.png"),size: 25,color: Color.fromRGBO(13, 74, 100, 1),)
                  :const ImageIcon(AssetImage("assets/images/bubble-2.png"),size: 25,)),
           BottomNavigationBarItem(label: 'Influencer',
              icon: _currentIndex == 2 ?
                   const ImageIcon(AssetImage("assets/images/influencer-2.png"),size: 25,color: Color.fromRGBO(13, 74, 100, 1))
                  :const ImageIcon(AssetImage("assets/images/influencer.png"),size: 25,),
          ),
           BottomNavigationBarItem(label: 'Profile',
              icon: _currentIndex == 3 ?
                   const ImageIcon(AssetImage("assets/images/profile.png"),size: 25,color: Color.fromRGBO(13, 74, 100, 1))
                  :const ImageIcon(AssetImage("assets/images/profile.png"),size: 25,)
          ),
        ]),
      ),
    );
  }
}
