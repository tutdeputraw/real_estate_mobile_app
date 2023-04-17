import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/search/broker_search_controller.dart';
import 'package:real_estate_mobile_app/features/search/search_controller.dart';

class BrokerSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SearchController>(BrokerSearchController());
  }
}
