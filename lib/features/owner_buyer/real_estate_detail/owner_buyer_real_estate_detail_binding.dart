import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/owner_buyer/real_estate_detail/owner_buyer_real_estate_detail_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_binding.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';

class OwnerBuyerRealEstateDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RealEstateDetailController>(OwnerBuyerRealEstateDetailController());
    RealEstateDetailBinding().dependencies();
  }
}
