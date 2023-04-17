import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/models/api_response_list.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class BrokerListRealEstateOpenToSellController
    extends BaseController<APIResponseList<RealEstate>> {
  @override
  void onInit() {
    super.onInit();
    refreshPage();
  }

  @override
  void loadNextPage() {
    callAPI(page: super.page.value + 1);
  }

  @override
  void refreshPage() async {
    await callAPI();
  }

  @override
  Future<void> callAPI({int page = 1}) async {
    final authController = Get.find<AuthController>();
    final user = authController.user!;

    loadingState();
    final response = await RetrofitAPI.getRealEstateByOpenToSell(
      orgname: user.organizationName!,
      userMSP: user.msp!,
    );

    print('masok sini!!!222');

    if (response != null && response.success) {
      finishLoadData(data: response);
      print('berhasil ${response.message}');
    } else {
      print("ERRORAAA: ${response?.message}");
    }
  }

  @override
  get statusData => List;

  void cardOnTap(RealEstateRecord data) {
    Get.toNamed(
      PageNames.BROKER_REAL_ESTATE_DETAIL,
      arguments: data.id,
    );
  }
}
