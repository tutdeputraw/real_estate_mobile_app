import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_controller.dart';

class RealEstateDetailHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RealEstateDetailHistoryController());
  }
}
