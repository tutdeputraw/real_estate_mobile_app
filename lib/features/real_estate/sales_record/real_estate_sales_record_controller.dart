import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/models/real_estate_sales_record/real_estate_sales_record_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class RealEstateSalesRecordController
    extends BaseController<RealEstateSalesRecordModel> {
  final String realEstateId;

  RealEstateSalesRecordController({required this.realEstateId});

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
    final response = await RetrofitAPI.getRealEstateSalesRecordByRealEstate(
      orgname: user.organizationName!,
      userMSP: user.msp!,
      realEstateId: realEstateId,
    );

    print('masok sini!!!222');

    if (response != null && response.success) {
      finishLoadData(data: response.data.first);
      print('berhasil ${response.message}');
    } else {
      print("ERRORAAA: ${response?.message}");
    }
  }

  @override
  get statusData => Object;
}
