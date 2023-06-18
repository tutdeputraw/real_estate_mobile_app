import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class ExternalAdvisorRealEstateDetailController extends GetxController {
  late RealEstateSalesRecordController realEstateSalesRecordController;

  late String realEstateId;
  TextEditingController teRealEstateAssessment = TextEditingController();

  @override
  void onInit() {
    realEstateId = Get.arguments as String;
    super.onInit();
  }

  @override
  void onReady() {
    realEstateSalesRecordController =
        Get.find<RealEstateSalesRecordController>();

    teRealEstateAssessment.text =
        realEstateSalesRecordController.dataObj!.realEstateAssessment;
    update();
    super.onReady();
  }

  Future<void> submitRealEstateAssessment() async {
    realEstateSalesRecordController.loadingState();

    AuthController authController = Get.find<AuthController>();
    final user = authController.user!;

    String realEstateSalesRecordId =
        realEstateSalesRecordController.dataObj!.id +
            realEstateSalesRecordController.dataObj!.sellerId;

    final response = await RetrofitAPI.updateRealEstateAssessment(
      orgname: user.organizationName!,
      userMSP: user.msp!,
      realEstateSalesRecordId: realEstateSalesRecordId,
      realEstateAssessment: teRealEstateAssessment.text,
    );

    if (response != null && response.success) {
      realEstateSalesRecordController.dataObj!.realEstateAssessment =
          teRealEstateAssessment.text;
      teRealEstateAssessment.clear();
      realEstateSalesRecordController.update();
      realEstateSalesRecordController.successState();
      update();
    } else {
      realEstateSalesRecordController.errorState();
      print("ERRORBBB: ${response?.message}");
    }
  }
}
