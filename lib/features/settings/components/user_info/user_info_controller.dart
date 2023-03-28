import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/models/user/user_record_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class UserInfoController extends BaseController<UserRecord> {
  final authController = Get.find<AuthController>();

  @override
  void onInit() {
    super.onInit();
    setDataFromLocalData();
  }

  @override
  Future<void> callAPI({int page = 1}) async {
    final user = authController.user!;

    final response = await RetrofitAPI.getUserByEmailAndName(
      email: user.email!,
      orgName: user.organizationName!,
      userMSP: user.msp!,
      userName: user.name!,
    );

    if (response == null) {
      print('RetrofitAPI.getUserByEmailAndName is failed');
      return;
    }

    final newUser = response.data.first.record;
    newUser.msp = user.msp!;
    newUser.organizationName = user.organizationName!;

    await authController.saveAuthData(user: user, token: '');
  }

  Future<void> setDataFromLocalData() async {
    finishLoadData(data: authController.user);
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
  get statusData => Object;
}
