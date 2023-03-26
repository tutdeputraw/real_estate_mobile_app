import 'package:real_estate_mobile_app/models/api_response_list.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_helper.dart';

class RetrofitAPI {
  static Future<APIResponseList<RealEstate>?> searchRealEstateByPlace(
    Map<String, String> queryParam,
  ) async {
    final response = await RetrofitHelper.get<APIResponseList<RealEstate>>(
      path: '/realEstate/searchByLocation',
      queryParams: queryParam,
      converter: (json) => APIResponseList<RealEstate>.fromJson(
        json,
        (itemJson) => RealEstate.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<dynamic> checkIfUserExist({
    required String username,
    required String orgname,
  }) async {
    final response = await RetrofitHelper.post<Map<String, dynamic>>(
      path: '/user/checkIfUserExist',
      body: {
        'username': username,
        'organizationName': orgname,
      },
    );
    return response;
  }
}
