import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/settings/components/user_info/user_info_controller.dart';

class UserInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserInfoController());
  }
}
