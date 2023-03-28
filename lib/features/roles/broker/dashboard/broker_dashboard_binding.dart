import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/dashboard/broker_dashboard_controller.dart';

class BrokerDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BrokerDashboardController>(BrokerDashboardController());
  }
}
