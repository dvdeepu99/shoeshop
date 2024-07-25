import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Colors.grey[600],
          activeColor: Colors.grey[900],
          tabActiveBorder: Border.all(color: Colors.grey.shade400),
          tabBackgroundColor: Colors.grey.shade500,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 30,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
          ]),
    );
  }
}
