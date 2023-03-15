import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SearchController extends GetxController {
  TextEditingController teKeyword = TextEditingController();

  Future<void> searchOnClicked() async {
    print("search keyword: ${teKeyword.text}");
  }
}
