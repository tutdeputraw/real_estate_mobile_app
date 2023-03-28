import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/dashboard/owner_buyer_dashboard_controller.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/home/owner_buyer_home_binding.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/search/owner_buyer_search_binding.dart';
import 'package:real_estate_mobile_app/features/settings/settings_binding.dart';
import 'package:real_estate_mobile_app/utils/layouts/bottom_navigation/bottom_navigation_binding.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_controller.dart';

class OwnerBuyerDashboardBinding extends Bindings {
  @override
  void dependencies() {
    OwnerBuyerHomeBinding().dependencies();
    OwnerBuyerSearchBinding().dependencies();
    SettingsBinding().dependencies();
    BottomNavigationBinding().dependencies();

    Get.put<DashboardController>(
      OwnerBuyerDashboardController(),
    );
  }
}
