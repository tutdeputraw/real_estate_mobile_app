import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BottomNavigationController extends GetxController {
  int selectedIndex = 0;

  void setSelectedIndex(int index) {
    print("Dashboard index is set to $index");
    selectedIndex = index;
    update();
  }

  List<BottomNavigationBarItem> getItems() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ];
  }
}
