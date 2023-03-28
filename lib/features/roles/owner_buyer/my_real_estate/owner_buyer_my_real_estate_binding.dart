import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/my_real_estate/owner_buyer_my_real_estate_controller.dart';

class MyRealEstateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyRealEstateController());
  }
}
