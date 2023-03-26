import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:real_estate_mobile_app/utils/helpers/print_json.dart';

class RetrofitHelper {
  static const String baseUrl = 'http://34.172.150.87:4000/api';

  static Future<T?> get<T>({
    required String path,
    Map<String, dynamic>? queryParams,
    Map<String, String>? headers,
    T Function(dynamic)? converter,
  }) async {
    var uri = Uri.parse(baseUrl + path);
    uri = uri.replace(queryParameters: queryParams);

    final response = await http.get(uri, headers: headers);

    return _handleResponse<T>(response, converter);
  }

  static Future<T?> post<T>({
    required String path,
    dynamic body,
    Map<String, String>? headers,
    T Function(dynamic)? converter,
  }) async {
    headers ??= {};
    headers.addAll({'Content-Type': 'application/json'});

    final uri = Uri.parse(baseUrl + path);
    final response =
        await http.post(uri, body: jsonEncode(body), headers: headers);
    return _handleResponse<T>(response, converter);
  }

  static Future<T?> put<T>({
    required String path,
    dynamic body,
    Map<String, String>? headers,
    T Function(dynamic)? converter,
  }) async {
    final uri = Uri.parse(baseUrl + path);
    final response =
        await http.put(uri, body: jsonEncode(body), headers: headers);
    return _handleResponse<T>(response, converter);
  }

  static Future<T?> delete<T>({
    required String path,
    Map<String, String>? headers,
    T Function(dynamic)? converter,
  }) async {
    final uri = Uri.parse(baseUrl + path);
    final response = await http.delete(uri, headers: headers);
    return _handleResponse<T>(response, converter);
  }

  static T? _handleResponse<T>(
      http.Response response, T Function(dynamic)? converter) {
    final statusCode = response.statusCode;
    final responseBody = response.body;

    final json = jsonDecode(responseBody);
    printJson(json);

    if (statusCode < 200 || statusCode >= 300 || responseBody.isEmpty) {
      return null;
    }
    if (!json['success']) {
      throw Exception(json['message']);
    }

    if (converter != null) {
      return converter(json);
    }

    return json as T;
  }
}
