import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_binding.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';
import 'package:real_estate_mobile_app/features/search/components/real_estate_detail/search_real_estate_detail_controller.dart';

class SearchRealEstateDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RealEstateDetailController>(SearchRealEstateDetailController());
    RealEstateDetailBinding().dependencies();
  }
}
