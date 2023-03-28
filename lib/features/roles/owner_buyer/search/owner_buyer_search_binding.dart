import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/search/owner_buyer_search_controller.dart';
import 'package:real_estate_mobile_app/features/search/search_controller.dart';

class OwnerBuyerSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SearchController>(OwnerBuyerSearchController());
  }
}
