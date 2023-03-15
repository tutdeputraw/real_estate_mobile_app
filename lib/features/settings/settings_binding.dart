import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/sign_out/sign_out_binding.dart';
import 'package:real_estate_mobile_app/features/settings/settings_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    SignOutBinding().dependencies();
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}
