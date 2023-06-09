import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/models/real_estate_history/real_estate_history_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class RealEstateDetailHistoryController
    extends BaseController<RealEstateHistory> {
  final String realEstateId;

  RealEstateDetailHistoryController({required this.realEstateId});

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
    print('AJAAJ ${user.organizationName}\t${user.msp}\t');
    final response = await RetrofitAPI.getRealEstateHistory(
      orgname: user.organizationName!,
      userMSP: user.msp!,
      realEstateId: realEstateId,
    );

    if (response != null && response.success) {
      finishLoadData(list: response.data);
      print('berhasil ${response.message}');
    } else {
      print("ERRORBBB: ${response?.message}");
    }
  }

  @override
  get statusData => List;
}
