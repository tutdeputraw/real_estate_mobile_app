import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/home/broker_home_controller.dart';

class BrokerHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BrokerHomeController>(BrokerHomeController());
  }
}
