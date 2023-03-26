import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/models/api_response_list.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_api.dart';

class SearchController extends BaseController<APIResponseList<RealEstate>> {
  TextEditingController teKeyword = TextEditingController();

  @override
  void loadNextPage() {}

  @override
  void refreshPage() {}

  @override
  Future<void> callAPI({int page = 1}) async {
    Map<String, String> queryParam = {
      "organizationName": "Org1",
      "username": "sumanto",
      "fieldSearch": "city",
      "keywordSearch": teKeyword.text
    };

    if (teKeyword.text.isEmpty) {
      super.dataObj = null;
      update();
      return;
    }

    loadingState();
    final response = await RetrofitAPI.searchRealEstateByPlace(queryParam);
    finishLoadData(data: response);
  }

  @override
  get statusData => Object;

  void searchOnClicked() {
    print("CLICKED");
    callAPI();
  }
}

// ignore_for_file: constant_identifier_names

// import 'package:flutter/widgets.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:real_estate_mobile_app/models/base_api_response.dart';
// import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';
// import 'package:real_estate_mobile_app/utils/helpers/network/http/http_helper.dart';

// class SearchController extends GetxController {
//   TextEditingController teKeyword = TextEditingController();

//   BaseApiResponse<RealEstate>? searchResult;

//   // ControllerState controllerState = ControllerState.DATA_EMPTY;

//   Future<void> searchOnClicked() async {
//     await Future.delayed(const Duration(seconds: 3));
//     print("search keyword: ${teKeyword.text}");

//     // setControllerState(ControllerState.LOADING);
//     callAPI();
//     // setControllerState(ControllerState.LOADING_FINISH);
//   }

//   // Future<BaseApiResponse<RealEstate>> callAPI() async {
//   Future<void> callAPI() async {
//     String path = '/realEstate/searchByLocation';
//     Map<String, String> params = {
//       "organizationName": "Org1",
//       "username": "sumanto",
//       "fieldSearch": "city",
//       "keywordSearch": "ndarjo"
//     };

//     final apiResponse = await HttpHelper.get(path: path, params: params);
//     print("IKILO: ${apiResponse.body}");

//     // setControllerState(ControllerState.DATA_FOUND);
//     update();
//   }

//   // void setControllerState(ControllerState givenControllerState) {
//   //   controllerState = givenControllerState;
//   //   update();
//   // }
// }
