import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/models/api_response_object.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class RealEstateDetailInformationController
    extends BaseController<APIResponseObject<RealEstateRecord>> {
  final String id;

  RealEstateDetailInformationController({required this.id});

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
  void refreshPage() {
    callAPI();
  }

  @override
  Future<void> callAPI({int page = 1}) async {
    final authController = Get.find<AuthController>();
    final user = authController.user!;

    loadingState();
    final response = await RetrofitAPI.getRealEstateById(
      orgname: user.organizationName!,
      userMSP: user.msp!,
      realEstateId: id,
    );

    if (response != null && response.success) {
      finishLoadData(data: response);
      print('berhasil ${response.message}');
    } else {
      print("ERRORBBB: ${response?.message}");
    }
  }

  @override
  get statusData => List;
}
