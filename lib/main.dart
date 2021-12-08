import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iconly/iconly.dart';
import 'package:red_string/page/home_page.dart';
import 'package:red_string/page/messages_page.dart';
import 'package:red_string/page/profile_page.dart';

void main() => runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 1;

  final Screens = [
    MessagesPage(),
    HomePage(),
    ProfilePage(),
  ];

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 1,
        height: 60.0,
        items: const <Widget>[
          Icon(IconlyBold.message, size: 40, color: Color(0xFF493843)),
          Icon(IconlyBold.home, size: 42, color: Color(0xFF493843)),
          Icon(IconlyBold.profile, size: 40, color: Color(0xFF493843)),
        ],
        color: const Color(0xFFEED9BB),
        buttonBackgroundColor: const Color(0xFFF5896E),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInCubic,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Screens[_page],
    );
  }
}
