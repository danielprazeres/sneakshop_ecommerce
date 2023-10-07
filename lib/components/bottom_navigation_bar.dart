import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: Color.fromARGB(255, 35, 35, 35),
          activeColor: const Color.fromARGB(255, 15, 15, 15),
          tabActiveBorder: Border.all(color: Colors.white, width: 1),
          tabBackgroundColor: Colors.grey.shade100,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.shopping_cart,
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
