import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/config.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_helper.dart';

class SignInController extends GetxController {
  TextEditingController teOrg = TextEditingController();
  TextEditingController teName = TextEditingController();
  TextEditingController teMSP = TextEditingController();
  TextEditingController teEmail = TextEditingController();

  void onSubmit() async {
    print('kesubmit');
    String token = 'token-dummy';

    EasyLoading.show();

    RetrofitConfig.defineApiURL(teOrg.text);

    print('URLRUL ${RetrofitHelper.baseUrl}');

    String userMSP = 'users';

    final response = await RetrofitAPI.getUserByEmailAndName(
      email: teEmail.text,
      orgName: teOrg.text,
      userMSP: userMSP,
      userName: teName.text,
    );

    if (response == null) {
      print('RetrofitAPI.getUserByEmailAndName is failed');
      return;
    }
    print("RESPONE ${response.data.first.record.npwpNumber}");

    final user = response.data.first.record;
    user.msp = userMSP;
    user.organizationName = teOrg.text;

    // if (!response['result']) {
    //   print('not registered yet');
    //   Get.snackbar("info", "Data not found");
    //   return;
    // }

    AuthController authController = Get.find<AuthController>();
    await authController.saveAuthData(user: user, token: token);
    EasyLoading.dismiss();
  }
}
