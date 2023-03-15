import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:real_estate_mobile_app/utils/layouts/bottom_navigation/bottom_navigation_controller.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(builder: (controller) {
      return BottomNavigationBar(
        items: controller.getItems(),
        currentIndex: controller.selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) => controller.setSelectedIndex(index),
      );
    });
  }
}
