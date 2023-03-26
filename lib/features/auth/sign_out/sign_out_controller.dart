import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';

class SignOutController extends GetxController {
  Future<void> signOut() async {
    final authController = Get.find<AuthController>();
    await authController.signOut();
  }
}
