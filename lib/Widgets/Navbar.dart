import 'package:flutter/material.dart';
import 'package:ipssi_flutter_firebase/Views/Search.dart';
import 'package:ipssi_flutter_firebase/Views/user_profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Search(),
    UserProfile(),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Rechercher',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Mes annonces',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Mon profil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ) ,
    );
  }
}