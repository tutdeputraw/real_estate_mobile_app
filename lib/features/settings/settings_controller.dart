import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/sign_out/sign_out_controller.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';

class SettingsController extends GetxController {
  void signOutOnClicked() {
    Get.find<SignOutController>().signOut();
  }

  void userInfoOnClicked() {
    Get.toNamed(PageNames.SETTINGS_USER_INFO);
  }
}
