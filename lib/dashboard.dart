import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:aplikasi2/home_screen.dart';
import 'package:aplikasi2/message.dart';
import 'package:aplikasi2/hal_profil.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _bottomNavIndex = 0;

  final List<IconData> iconList = [
    Icons.home,
    Icons.message,
    Icons.notifications,
    Icons.person,
  ];

  final List<Widget> pages = [
    HomeScreen(),
    MessageScreen(),
    Center(child: Text('Notification Page', style: TextStyle(fontSize: 24))),
    HalProfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_bottomNavIndex],

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.air),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 30,
        rightCornerRadius: 30,
        backgroundColor: Colors.blueAccent,
        activeColor: Colors.white,
        inactiveColor: Colors.white70,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
