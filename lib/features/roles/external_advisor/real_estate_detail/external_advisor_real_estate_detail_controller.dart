import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_controller.dart';

class ExternalAdvisorRealEstateDetailController extends GetxController {
  late String realEstateId;

  late RealEstateSalesRecordController realEstateSalesRecordController;

  @override
  void onInit() {
    realEstateId = Get.arguments as String;
    super.onInit();
  }
}
