import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/home/external_advisor_home_controller.dart';

class ExternalAdvisorHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ExternalAdvisorHomeController>(ExternalAdvisorHomeController());
  }
}
