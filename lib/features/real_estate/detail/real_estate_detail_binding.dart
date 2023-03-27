import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_binding.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_binding.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';

class RealEstateDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RealEstateDetailController());

    RealEstateDetailInformationBinding().dependencies();
    RealEstateDetailHistoryBinding().dependencies();
  }
}
