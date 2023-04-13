import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/buy_real_estate/owner_buyer_buy_real_estate_controller.dart';

class OwnerBuyerBuyRealEstateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OwnerBuyerBuyRealEstateController());
  }
}
