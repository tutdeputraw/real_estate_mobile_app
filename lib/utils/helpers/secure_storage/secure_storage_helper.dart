import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/utils/helpers/secure_storage/secure_storage_constants.dart';

class SecureStorageHelper {
  static FlutterSecureStorage secureStorage = Get.find<FlutterSecureStorage>();

  Future<String?> getToken() async {
    return await secureStorage.read(
      key: SecureStorageConstants.TOKEN_KEY,
    );
  }

  Future setToken({String? value}) async {
    return await secureStorage.write(
      key: SecureStorageConstants.TOKEN_KEY,
      value: value,
    );
  }
}
