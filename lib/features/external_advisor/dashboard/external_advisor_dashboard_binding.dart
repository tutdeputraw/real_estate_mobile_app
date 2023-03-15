import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/external_advisor/dashboard/external_advisor_dashboard_controller.dart';

class ExternalAdvisorDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExternalAdvisorDashboardController>(
      () => ExternalAdvisorDashboardController(),
    );
  }
}
