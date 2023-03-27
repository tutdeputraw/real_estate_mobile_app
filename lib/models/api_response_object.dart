// class BaseApiResponse<T> {
//   String? success;
//   String? message;
//   T? data;

//   BaseApiResponse({
//     this.success,
//     this.message,
//     this.data,
//   });

//   factory BaseApiResponse.fromJson({
//     required Map<String, dynamic> json,
//     required Function(Map<String, dynamic>) parseData,
//   }) {
//     return BaseApiResponse(
//       success: json['success'],
//       message: json['message'],
//       data: parseData(json['data']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'success': success,
//       'message': message,
//       'data': data.toString(),
//     };
//   }
// }

class APIResponseObject<T> {
  final T data;
  final String message;
  final bool success;

  APIResponseObject({
    required this.data,
    required this.message,
    required this.success,
  });

  factory APIResponseObject.fromJson(
      Map<String, dynamic> json, Function fromJsonT) {
    final item = fromJsonT(json['data']);
    return APIResponseObject<T>(
      data: item,
      message: json['message'],
      success: json['success'],
    );
  }
}
