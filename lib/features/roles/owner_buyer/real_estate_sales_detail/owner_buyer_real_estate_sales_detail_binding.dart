import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_sales_detail/owner_buyer_real_estate_sales_detail_controller.dart';

class OwnerBuyerRealEstateSalesDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OwnerBuyerRealEstateSalesDetailController());
  }
}
