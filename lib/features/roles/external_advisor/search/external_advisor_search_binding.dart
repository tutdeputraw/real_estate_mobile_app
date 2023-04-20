import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/search/external_advisor_broker_search_controller.dart';
import 'package:real_estate_mobile_app/features/search/search_controller.dart';

class ExternalAdvisorSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SearchController>(ExternalAdvisorSearchController());
  }
}
