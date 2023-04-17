import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/dashboard/broker_dashboard_controller.dart';
import 'package:real_estate_mobile_app/features/roles/broker/home/broker_home_binding.dart';
import 'package:real_estate_mobile_app/features/roles/broker/search/broker_search_binding.dart';
import 'package:real_estate_mobile_app/features/settings/settings_binding.dart';
import 'package:real_estate_mobile_app/utils/layouts/bottom_navigation/bottom_navigation_binding.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_controller.dart';

class BrokerDashboardBinding extends Bindings {
  @override
  void dependencies() {
    BrokerHomeBinding().dependencies();
    BrokerSearchBinding().dependencies();
    SettingsBinding().dependencies();
    BottomNavigationBinding().dependencies();

    Get.put<DashboardController>(BrokerDashboardController());
  }
}
