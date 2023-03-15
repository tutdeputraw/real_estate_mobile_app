import 'package:get/get.dart';
import 'package:real_estate_mobile_app/utils/layouts/bottom_navigation/bottom_navigation_controller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BottomNavigationController>(BottomNavigationController());
  }
}
