import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class RealEstateDetailController extends BaseController {
  late String id;

  @override
  void onInit() {
    super.onInit();
    setId(Get.arguments as String);
  }

  @override
  void loadNextPage() {}

  @override
  void refreshPage() {}

  @override
  get statusData => null;

  void setId(String givenId) {
    id = givenId;
    update();
  }

  @override
  Future<void> callAPI({int page = 1}) {
    throw UnimplementedError();
  }
}
