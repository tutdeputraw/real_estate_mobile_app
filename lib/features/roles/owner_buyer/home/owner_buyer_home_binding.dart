import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/home/owner_buyer_home_controller.dart';

class OwnerBuyerHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OwnerBuyerHomeController>(
      OwnerBuyerHomeController(),
    );
  }
}
