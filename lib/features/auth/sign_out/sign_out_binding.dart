import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/sign_out/sign_out_controller.dart';

class SignOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SignOutController>(
      SignOutController(),
    );
  }
}
