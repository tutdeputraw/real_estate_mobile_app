import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/search/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
