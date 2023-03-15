import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/sign_out/sign_out_controller.dart';

class SettingsController extends GetxController {
  void signOutOnClicked() {
    Get.find<SignOutController>().signOut();
  }
}
