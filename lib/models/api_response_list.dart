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
    Map<String, dynamic> json,
    Function fromJsonT,
  ) {
    return APIResponseList<T>(
      data: json['data'].length == 0
          ? []
          : List<T>.from(json['data'].map((item) => fromJsonT(item))),
      message: json['message']??'',
      success: json['success']??'',
    );
  }
}
