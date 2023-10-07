import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int) onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Color.fromARGB(255, 85, 85, 85),
          activeColor: const Color.fromARGB(255, 15, 15, 15),
          tabActiveBorder: Border.all(color: Colors.white, width: 1),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 20,
          onTabChange: (value) => onTabChange(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            // GButton(
            //   icon: Icons.search,
            //   text: 'Search',
            // ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ]),
    );
  }
}
