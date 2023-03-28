import 'package:get/get.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';

class OwnerBuyerCheckSalesProgressController extends GetxController {
  final String realEstateId;

  OwnerBuyerCheckSalesProgressController({required this.realEstateId});

  void checkSalesProgress() {
    Get.toNamed(
      PageNames.OWNER_BUYER_REAL_ESTATE_SALES_DETAIL,
      arguments: realEstateId,
    );
  }
}
