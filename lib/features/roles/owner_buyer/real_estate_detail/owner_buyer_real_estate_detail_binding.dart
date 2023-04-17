import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/owner_buyer_real_estate_detail_controller.dart';

class OwnerBuyerRealEstateDetailBinding extends Bindings {
  @override
  void dependencies() {
    final realEstateDetailController = Get.put<RealEstateDetailController>(
      OwnerBuyerRealEstateDetailController(),
    );
    final realEstateId = realEstateDetailController.id;

    Get.put(RealEstateDetailInformationController(realEstateId: realEstateId));
    Get.put(RealEstateDetailHistoryController(realEstateId: realEstateId));
  }
}
