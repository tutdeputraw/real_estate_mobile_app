import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:real_estate_mobile_app/utils/helpers/storage/storage_constants.dart';

class StorageHelper {
  final _box = GetStorage(StorageConstants.STORAGE_NAME);

  Future<void> write(String name, dynamic value) async {
    await _box.write(name, value);
  }

  Future<void> delete(String name) async {
    await _box.remove(name);
  }

  dynamic get(String name) {
    return _box.read(name);
  }

  bool has(String name) {
    return _box.hasData(name);
  }

  String encodeList<T>(List<T> datas) {
    return json.encode(datas);
  }

  Future<void> clearAll() async {
    await _box.erase();
  }
}
