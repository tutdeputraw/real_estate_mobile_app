import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:real_estate_mobile_app/utils/layouts/bottom_navigation/bottom_navigation_controller.dart';
import 'package:real_estate_mobile_app/utils/layouts/bottom_navigation/bottom_navigation_page.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashboardController) {
      return Scaffold(
        body: GetBuilder<BottomNavigationController>(builder: (controller) {
          return dashboardController.getPages()[controller.selectedIndex];
        }),
        bottomNavigationBar: const BottomNavigationPage(),
      );
    });
  }
}
