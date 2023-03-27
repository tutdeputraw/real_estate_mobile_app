import 'package:real_estate_mobile_app/models/api_response_list.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/models/user/user_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_helper.dart';

class RetrofitAPI {
  static Future<APIResponseList<RealEstate>?> searchRealEstateByPlace({
    required String orgName,
    required String userMSP,
    required String keywordSearch,
  }) async {
    final response = await RetrofitHelper.get<APIResponseList<RealEstate>>(
      path: '/realEstate/searchByLocation',
      queryParams: {
        "organizationName": orgName,
        "userMSP": userMSP,
        "fieldSearch": "city",
        "keywordSearch": keywordSearch
      },
      converter: (json) => APIResponseList<RealEstate>.fromJson(
        json,
        (itemJson) => RealEstate.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<APIResponseList<User>?> getUserByEmailAndName({
    required String orgName,
    required String userName,
    required String userMSP,
    required String email,
  }) async {
    final response = await RetrofitHelper.get<APIResponseList<User>>(
      path: '/user/getByEmailAndName',
      queryParams: {
        'organizationName': orgName,
        'user': userName,
        'userMSP': userMSP,
        'email': email,
      },
      converter: (json) => APIResponseList<User>.fromJson(
        json,
        (itemJson) => User.fromJson(itemJson),
      ),
    );
    return response;
  }

  // static Future<dynamic> checkIfUserExist({
  //   required String username,
  //   required String orgname,
  // }) async {
  //   final response = await RetrofitHelper.post<Map<String, dynamic>>(
  //     path: '/user/checkIfUserExist',
  //     body: {
  //       'username': username,
  //       'organizationName': orgname,
  //     },
  //   );
  //   return response;
  // }

  static Future<APIResponseList<RealEstateRecord>?> getRealEstateByOwner({
    required String username,
    required String orgname,
  }) async {
    final response =
        await RetrofitHelper.get<APIResponseList<RealEstateRecord>>(
      path: '/user/checkIfUserExist',
      queryParams: {
        'username': username,
        'organizationName': orgname,
      },
      converter: (json) => APIResponseList<RealEstateRecord>.fromJson(
        json,
        (itemJson) => RealEstateRecord.fromJson(itemJson),
      ),
    );
    return response;
  }
}
