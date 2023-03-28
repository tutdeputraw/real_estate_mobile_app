import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/models/api_response_list.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class MyRealEstateController
    extends BaseController<APIResponseList<RealEstateRecord>> {
  @override
  void onInit() {
    super.onInit();
    refreshPage();
  }

  @override
  void loadNextPage() {
    callAPI();
  }

  @override
  void refreshPage() {
    callAPI(page: super.page.value + 1);
  }

  @override
  Future<void> callAPI({int page = 1}) async {
    final authController = Get.find<AuthController>();
    final user = authController.user!;

    loadingState();
    final response = await RetrofitAPI.getRealEstateByOwner(
      orgname: user.organizationName!,
      userMSP: user.msp!,
      ownerId: user.id!,
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
}
