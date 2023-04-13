import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class OwnerBuyerBuyRealEstateController extends GetxController {
  final authController = Get.find<AuthController>();
  final realEstateDetailInformationController =
      Get.find<RealEstateDetailInformationController>();

  late String realEstateId;

  @override
  void onInit() {
    super.onInit();
    setRealEstateId(Get.arguments as String);
  }

  void buyRealEstate() async {
    final user = authController.user!;

    EasyLoading.show();
    await RetrofitAPI.changeRealEstateOwner(
      newOwnerId: user.id!,
      orgname: user.organizationName!,
      realEstateId: realEstateId,
      userMSP: user.msp!,
    );
    EasyLoading.dismiss();

    realEstateDetailInformationController.callAPI();

    Get.back();
  }

  void setRealEstateId(String givenId) {
    realEstateId = givenId;
    update();
  }
}
