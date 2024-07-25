import 'package:flutter/material.dart';
import 'package:shoe_shopping/components/bottom_nav_bar.dart';
import 'package:shoe_shopping/pages/cart_page.dart';
import 'package:shoe_shopping/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            color: Colors.grey[900],
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //logo
              Column(
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    'lib/images/logo.png',
                    color: Colors.grey[400],
                    height: 100,
                    width: 200,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.grey[400],
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.grey[400],
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.red[200],
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.red[200]),
                  ),
                ),
              ),
              //other pages
            ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
