import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/list_real_estate_open_to_sell/broker_list_real_estate_open_to_sell_controller.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/list_real_estate_open_to_sell/external_advisor_list_real_estate_open_to_sell_controller.dart';

class ExternalAdvisorListRealEstateOpenToSellBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BrokerListRealEstateOpenToSellController>(
      ExternalAdvisorListRealEstateOpenToSellController(),
    );
  }
}
