import 'package:get/get.dart';
import 'package:real_estate_mobile_app/utils/layouts/bottom_navigation/bottom_navigation_binding.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    // BottomNavigationBinding().dependencies();
    Get.put<DashboardController>(DashboardController());
  }
}
