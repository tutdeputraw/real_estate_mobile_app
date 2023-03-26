import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpHelper {
  static const String baseUrl = 'http://34.172.150.87:4000/api';

  static Future<http.Response> get({
    required String path,
    Map<String, String>? headers,
    Map<String, String>? params,
  }) async {
    var url = '$baseUrl/$path';
    var uri = Uri.parse(url);

    headers ??= {};
    headers.addAll({
      'Content-Type': 'application/json',
    });

    uri = uri.replace(queryParameters: params ?? {});

    final response = await http.get(uri, headers: headers);
    return response;
  }

  static Future<http.Response> post(String path, dynamic data) async {
    final url = '$baseUrl/$path';
    final response = await http.post(Uri.parse(url), body: jsonEncode(data));
    return response;
  }

  static Future<http.Response> put(String path, dynamic data) async {
    final url = '$baseUrl/$path';
    final response = await http.put(Uri.parse(url), body: jsonEncode(data));
    return response;
  }

  static Future<http.Response> delete(String path) async {
    final url = '$baseUrl/$path';
    final response = await http.delete(Uri.parse(url));
    return response;
  }
}


// class HTTPHelper {
//   Future<T> get<T>({
//     required String postsEndpoint,
//     Map<String, String>? header,
//     required T Function(dynamic) parseResponse,
//   }) async {
//     final url = Uri.parse(postsEndpoint);

//     http.Response response = await http.get(
//       url,
//       headers: header,
//     );

//     if (response.statusCode == 200) {
//       return parseResponse(jsonEncode(response.body));
//     } else {
//       throw Exception('Failed to fetch api');
//     }
//   }

//   // Future<T> post<T>() {
//   //   // return T;
//   // }
// }
