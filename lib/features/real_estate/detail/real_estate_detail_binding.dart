import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';

class RealEstateDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RealEstateDetailController());
  }
}
