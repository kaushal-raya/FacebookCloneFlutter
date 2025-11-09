import 'package:facebook_clone/Models/FreindRequest.dart';
import 'package:facebook_clone/Screens/Firstpage.dart';
import 'package:facebook_clone/Screens/FreindRequest.dart';
import 'package:facebook_clone/Screens/MoreOption.dart';
import 'package:facebook_clone/Screens/Notification.dart';
import 'package:facebook_clone/Screens/VideoScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class iconcontroller extends StatefulWidget {
  const iconcontroller({super.key});

  @override
  State<iconcontroller> createState() => _iconcontrollerState();
}

class _iconcontrollerState extends State<iconcontroller> {
  int _selectedindex = 0;

  final List<Widget> _pages = [
    Firstpage(),
    Freindrequest(),
    Videoscreen(),
  Notifications(),
    Moreoption(),
    
  ];

  void _pagecontroller(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _pagecontroller,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueGrey, size: 24),
            label: "Home",
            activeIcon: Icon(Icons.home_filled, color: Colors.blue, size: 24),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people, color: Colors.blueGrey),
            label: "Movies",

            activeIcon: Icon(Icons.people, color: Colors.blue),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_sharp, color: Colors.blueGrey),
            label: "Category",
            activeIcon: Icon(Icons.ondemand_video, color: Colors.blue),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bell, color: Colors.blueGrey),
            label: "Log Out",
            activeIcon: Icon(FontAwesomeIcons.bell, color: Colors.blue),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.blueGrey),
            label: "Log Out",
            activeIcon: Icon(Icons.menu, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
