import 'package:get/get.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';

class OwnerBuyerBuyRealEstateComponentController extends GetxController {
  final String realEstateId;

  OwnerBuyerBuyRealEstateComponentController({required this.realEstateId});

  void buyRealEstate() {
    Get.toNamed(
      PageNames.OWNER_BUYER_BUY_REAL_ESTATE,
      arguments: realEstateId,
    );
  }
}
