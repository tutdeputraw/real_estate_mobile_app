import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class OwnerBuyerSellRealEstateComponentController extends GetxController {
  final authController = Get.find<AuthController>();
  final realEstateDetailInformationController =
      Get.find<RealEstateDetailInformationController>();

  final String realEstateId;

  OwnerBuyerSellRealEstateComponentController({required this.realEstateId});

  void sellRealEstate() async {
    EasyLoading.show();
    await _callApi();
    EasyLoading.dismiss();

    await realEstateDetailInformationController.callAPI();
  }

  Future<void> _callApi() async {
    final user = authController.user!;

    await RetrofitAPI.updateRealEstateSaleStatus(
      orgname: user.organizationName!,
      userMSP: user.msp!,
      realEstateId: realEstateId,
      status: 'true',
    );
  }
}
