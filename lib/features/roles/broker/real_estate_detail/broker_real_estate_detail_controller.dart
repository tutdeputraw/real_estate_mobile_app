import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class BrokerRealEstateDetailController extends GetxController {
  late String realEstateId;

  late RealEstateSalesRecordController realEstateSalesRecordController;

  @override
  void onInit() {
    realEstateId = Get.arguments as String;
    super.onInit();
  }

  @override
  void onReady() {
    realEstateSalesRecordController =
        Get.find<RealEstateSalesRecordController>();
    super.onReady();
  }

  void preparationOnClicked() async {
    String status = "Preparation";

    _changeRealEstateSalesPhase(status);
  }

  void dueDiligenceOnCLicked() {
    String status = "Due Diligence";
    _changeRealEstateSalesPhase(status);
  }

  void completionOnCLicked() {
    String status = "Completion";
    _changeRealEstateSalesPhase(status);
  }

  Future<void> _changeRealEstateSalesPhase(String phase) async {
    realEstateSalesRecordController.loadingState();

    AuthController authController = Get.find<AuthController>();
    final user = authController.user!;

    String realEstateSalesRecordId =
        realEstateSalesRecordController.dataObj!.id +
            realEstateSalesRecordController.dataObj!.sellerId;

    final response = await RetrofitAPI.updateRealEstateSalesPhase(
      orgname: user.organizationName!,
      userMSP: user.msp!,
      realEstateSalesRecordId: realEstateSalesRecordId,
      salesPhase: phase,
    );

    if (response != null && response.success) {
      realEstateSalesRecordController.dataObj!.phase = phase;
      realEstateSalesRecordController.update();
      realEstateSalesRecordController.successState();
    } else {
      realEstateSalesRecordController.errorState();
      print("ERRORBBB: ${response?.message}");
    }
  }
}
