import 'package:flutter/material.dart';

class BottomNavigator {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Red'
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Blue',
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.info_outline),
          label: 'Yellow',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TESTEST'),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
