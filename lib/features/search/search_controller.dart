import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/models/api_response_list.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';
import 'package:real_estate_mobile_app/models/user/user_record_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

abstract class SearchController
    extends BaseController<APIResponseList<RealEstate>> {
  TextEditingController teKeyword = TextEditingController();

  void itemOnClicked(String id);

  @override
  void loadNextPage() {}

  @override
  void refreshPage() {}

  @override
  Future<void> callAPI({int page = 1}) async {
    final authController = Get.find<AuthController>();
    UserRecord user = authController.user!;

    if (teKeyword.text.isEmpty) {
      super.dataObj = null;
      update();
      return;
    }

    loadingState();
    final response = await RetrofitAPI.searchRealEstateByPlace(
      orgName: user.organizationName ?? "Org1",
      userMSP: user.msp!,
      keywordSearch: teKeyword.text,
    );
    finishLoadData(data: response);
  }

  @override
  get statusData => Object;

  void searchOnClicked() {
    callAPI();
  }
}
