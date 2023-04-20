import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/dashboard/external_advisor_dashboard_controller.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/home/external_advisor_home_binding.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/search/external_advisor_search_binding.dart';
import 'package:real_estate_mobile_app/features/settings/settings_binding.dart';
import 'package:real_estate_mobile_app/utils/layouts/bottom_navigation/bottom_navigation_binding.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_controller.dart';

class ExternalAdvisorDashboardBinding extends Bindings {
  @override
  void dependencies() {
    ExternalAdvisorHomeBinding().dependencies();
    ExternalAdvisorSearchBinding().dependencies();
    SettingsBinding().dependencies();
    BottomNavigationBinding().dependencies();

    Get.put<DashboardController>(
      ExternalAdvisorDashboardController(),
    );
  }
}
