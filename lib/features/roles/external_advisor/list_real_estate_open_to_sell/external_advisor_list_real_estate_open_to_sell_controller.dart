import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/list_real_estate_open_to_sell/broker_list_real_estate_open_to_sell_controller.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';

class ExternalAdvisorListRealEstateOpenToSellController
    extends BrokerListRealEstateOpenToSellController {
  @override
  void cardOnTap(RealEstateRecord data) {
    Get.toNamed(
      PageNames.EXTERNAL_ADVISOR_REAL_ESTATE_DETAIL,
      arguments: data.id,
    );
  }
}
