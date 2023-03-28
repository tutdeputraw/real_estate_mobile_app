import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';
import 'package:real_estate_mobile_app/features/search/components/real_estate_detail/search_real_estate_detail_controller.dart';

class SearchRealEstateDetailBinding extends Bindings {
  @override
  void dependencies() async {
    final realEstateDetailController = Get.put<RealEstateDetailController>(
      SearchRealEstateDetailController(),
    );
    final realEstateId = realEstateDetailController.id;

    Get.put(RealEstateDetailInformationController(id: realEstateId));
    Get.put(RealEstateDetailHistoryController());
  }
}
