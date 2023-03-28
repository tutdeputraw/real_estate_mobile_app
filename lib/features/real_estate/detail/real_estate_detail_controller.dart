import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';

abstract class RealEstateDetailController extends BaseController {
  late String id;

  Widget showActionButton();

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
