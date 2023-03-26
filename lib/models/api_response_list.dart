class APIResponseList<T> {
  final List<T> data;
  final String message;
  final bool success;

  APIResponseList({
    required this.data,
    required this.message,
    required this.success,
  });

  factory APIResponseList.fromJson(
      Map<String, dynamic> json, Function fromJsonT) {
    final items = List<T>.from(json['data'].map((item) => fromJsonT(item)));
    return APIResponseList<T>(
      data: items,
      message: json['message'],
      success: json['success'],
    );
  }
}
