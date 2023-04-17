import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/list_real_estate_open_to_sell/broker_list_real_estate_open_to_sell_controller.dart';

class BrokerListRealEstateOpenToSellBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BrokerListRealEstateOpenToSellController>(
      BrokerListRealEstateOpenToSellController(),
    );
  }
}
