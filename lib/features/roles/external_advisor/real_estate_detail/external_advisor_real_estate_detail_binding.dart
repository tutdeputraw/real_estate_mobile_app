import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_controller.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/real_estate_detail/external_advisor_real_estate_detail_controller.dart';

class ExternalAdvisorRealEstateDetailBinding extends Bindings {
  @override
  void dependencies() {
    final detailController = Get.put<ExternalAdvisorRealEstateDetailController>(
      ExternalAdvisorRealEstateDetailController(),
    );

    Get.put(RealEstateDetailInformationController(
      realEstateId: detailController.realEstateId,
    ));
    Get.put(RealEstateDetailHistoryController(
      realEstateId: detailController.realEstateId,
    ));
    Get.put(RealEstateSalesRecordController(
      realEstateId: detailController.realEstateId,
    ));
  }
}
