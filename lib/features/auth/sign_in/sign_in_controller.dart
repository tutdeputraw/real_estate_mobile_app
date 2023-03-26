import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/models/user.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class SignInController extends GetxController {
  TextEditingController teOrg = TextEditingController();
  TextEditingController teName = TextEditingController();

  void onSubmit() async {
    String name = teName.text;
    String org = teOrg.text;
    User user = User(organizationName: org, userName: name);
    String token = 'token-dummy';

    final response = await RetrofitAPI.checkIfUserExist(
      orgname: user.organizationName!,
      username: user.userName!,
    );

    if (!response['result']) {
      print('not registered yet');
      Get.snackbar("info", "Data not found");
      return;
    }

    AuthController authController = Get.find<AuthController>();
    await authController.saveAuthData(user: user, token: token);
    // await authController.saveAuthData(user: user, token: token);
  }
}
