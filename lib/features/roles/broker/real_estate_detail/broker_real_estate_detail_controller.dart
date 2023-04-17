import 'package:get/get.dart';

class BrokerRealEstateDetailController extends GetxController {
  late String realEstateId;

  @override
  void onInit() {
    realEstateId = Get.arguments as String;
    super.onInit();
  }
}
