import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';

class RealEstateDetailInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RealEstateDetailInformationController());
  }
}
