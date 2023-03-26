import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/owner_buyer/home/components/my_real_estate/my_real_estate_controller.dart';

class MyRealEstateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyRealEstateController());
  }
}
