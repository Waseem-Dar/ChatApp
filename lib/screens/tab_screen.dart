import 'package:chat_app/screens/influencer_screen.dart';
import 'package:chat_app/screens/location_screen.dart';
import 'package:chat_app/screens/profile_screen.dart';
import 'package:chat_app/screens/users_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}
int _currentIndex = 1;
final List _tabs = [
  LocationScreen(),
  UsersScreen(),
  InfluencerScreen(),
  ProfileScreen(),
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
          selectedIconTheme: const IconThemeData(color: Color.fromRGBO(13, 74, 100, 1)),
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
            items: const [
          BottomNavigationBarItem(

              label: 'location',
              icon: ImageIcon(AssetImage("assets/images/location.png"),size:25,)),
          BottomNavigationBarItem(label: 'Users',
              icon: ImageIcon(AssetImage("assets/images/chat.png"),size: 25,)),
          BottomNavigationBarItem(label: 'Influencer',
              icon: ImageIcon(AssetImage("assets/images/influencer.png"),size: 25,)),
          BottomNavigationBarItem(label: 'Profile',
              icon: ImageIcon(AssetImage("assets/images/profile.png"),size: 25,)),
        ]),
      ),
    );
  }
}
