import 'package:real_estate_mobile_app/models/api_response_list.dart';
import 'package:real_estate_mobile_app/models/api_response_object.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/models/real_estate_history/real_estate_history_model.dart';
import 'package:real_estate_mobile_app/models/real_estate_sales_record/real_estate_sales_record_model.dart';
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
        "fieldSearch": "realEstateModel_city",
        "keywordSearch": keywordSearch
      },
      converter: (json) => APIResponseList<RealEstate>.fromJson(
        json,
        (itemJson) => RealEstate.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<APIResponseObject<User>?> getUserByEmailAndName({
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

  static Future<APIResponseList<RealEstateRecord>?> getRealEstateByOwner({
    required String orgname,
    required String userMSP,
    required String ownerId,
  }) async {
    final response =
        await RetrofitHelper.get<APIResponseList<RealEstateRecord>>(
      path: '/realEstate/getByOwner',
      queryParams: {
        'organizationName': orgname,
        'userMSP': userMSP,
        'ownerId': ownerId,
      },
      converter: (json) => APIResponseList<RealEstateRecord>.fromJson(
        json,
        (itemJson) => RealEstateRecord.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<APIResponseObject<RealEstateRecord>?> getRealEstateById({
    required String orgname,
    required String userMSP,
    required String realEstateId,
  }) async {
    final response =
        await RetrofitHelper.get<APIResponseObject<RealEstateRecord>>(
      path: '/realEstate/getById',
      queryParams: {
        'organizationName': orgname,
        'userMSP': userMSP,
        'realEstateId': realEstateId,
      },
      converter: (json) => APIResponseObject<RealEstateRecord>.fromJson(
        json,
        (itemJson) => RealEstateRecord.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<APIResponseList<RealEstate>?> getRealEstateByOpenToSell({
    required String orgname,
    required String userMSP,
  }) async {
    final response = await RetrofitHelper.get<APIResponseList<RealEstate>>(
      path: '/realEstate/getByOpenToSell',
      queryParams: {
        "organizationName": orgname,
        "userMSP": userMSP,
      },
      converter: (json) => APIResponseList<RealEstate>.fromJson(
        json,
        (itemJson) => RealEstate.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<APIResponseList<RealEstate>?> getRealEstateByOpenToSellDetail({
    required String orgname,
    required String userMSP,
    required String realEstateId,
  }) async {
    final response = await RetrofitHelper.get<APIResponseList<RealEstate>>(
      path: '/realEstate/getByOpenToSell/detail',
      queryParams: {
        "organizationName": orgname,
        "userMSP": userMSP,
        "realEstateId": realEstateId,
      },
      converter: (json) => APIResponseList<RealEstate>.fromJson(
        json,
        (itemJson) => RealEstate.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<APIResponseList<RealEstateSalesRecordModel>?>
      getRealEstateSalesRecordByRealEstate({
    required String orgname,
    required String userMSP,
    required String realEstateId,
  }) async {
    final response =
        await RetrofitHelper.get<APIResponseList<RealEstateSalesRecordModel>>(
      path: '/realEstate/salesRecord/getByRealEstateId',
      queryParams: {
        "organizationName": orgname,
        "userMSP": userMSP,
        "realEstateId": realEstateId,
      },
      converter: (json) => APIResponseList<RealEstateSalesRecordModel>.fromJson(
        json,
        (itemJson) => RealEstateSalesRecordModel.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<APIResponseList<RealEstateHistory>?> getRealEstateHistory({
    required String orgname,
    required String userMSP,
    required String realEstateId,
  }) async {
    final response =
        await RetrofitHelper.get<APIResponseList<RealEstateHistory>>(
      path: '/realEstate/history/getByRealEstateId',
      queryParams: {
        'organizationName': orgname,
        'userMSP': userMSP,
        'realEstateId': realEstateId,
      },
      converter: (json) => APIResponseList<RealEstateHistory>.fromJson(
        json,
        (itemJson) => RealEstateHistory.fromJson(itemJson),
      ),
    );
    return response;
  }

  static Future<APIResponseObject?> updateRealEstateSaleStatus({
    required String orgname,
    required String userMSP,
    required String realEstateId,
    required String status,
  }) async {
    final response = await RetrofitHelper.post<APIResponseObject>(
      path: '/realEstate/ChangeRealEstateSellStatus',
      body: {
        'organizationName': orgname,
        'userMSP': userMSP,
        'realEstateId': realEstateId,
        'status': status,
      },
      converter: (json) => APIResponseObject.fromJson(
        json,
        (itemJson) {},
      ),
    );
    return response;
  }

  static Future<APIResponseObject?> updateRealEstateSalesPhase({
    required String orgname,
    required String userMSP,
    required String realEstateSalesRecordId,
    required String salesPhase,
  }) async {
    final response = await RetrofitHelper.post<APIResponseObject>(
      path: '/realEstate/salesRecord/updateSalesPhase',
      body: {
        'organizationName': orgname,
        'userMSP': userMSP,
        'realEstateSalesRecordId': realEstateSalesRecordId,
        'salesPhase': salesPhase,
      },
      converter: (json) => APIResponseObject.fromJson(
        json,
        (itemJson) {},
      ),
    );
    return response;
  }

  static Future<APIResponseObject?> updateRealEstateAssessment({
    required String orgname,
    required String userMSP,
    required String realEstateSalesRecordId,
    required String realEstateAssessment,
  }) async {
    final response = await RetrofitHelper.post<APIResponseObject>(
      path: '/realEstate/salesRecord/updateRealEstateAssessment',
      body: {
        'organizationName': orgname,
        'userMSP': userMSP,
        'realEstateSalesRecordId': realEstateSalesRecordId,
        'realEstateAssessment': realEstateAssessment,
      },
      converter: (json) => APIResponseObject.fromJson(
        json,
        (itemJson) {},
      ),
    );
    return response;
  }

  static Future<APIResponseObject?> changeRealEstateOwner({
    required String orgname,
    required String userMSP,
    required String realEstateId,
    required String newOwnerId,
  }) async {
    final response = await RetrofitHelper.post<APIResponseObject>(
      path: '/realEstate/ChangeRealEstateOwner',
      body: {
        'organizationName': orgname,
        'userMSP': userMSP,
        'realEstateId': realEstateId,
        'newOwnerId': newOwnerId,
      },
      converter: (json) => APIResponseObject.fromJson(
        json,
        (itemJson) {},
      ),
    );
    return response;
  }
}
