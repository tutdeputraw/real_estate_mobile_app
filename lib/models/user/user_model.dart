import 'package:real_estate_mobile_app/models/user/user_record_model.dart';

class User {
  String key;
  UserRecord record;

  User({required this.key, required this.record});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      key: json['Key'],
      record: UserRecord.fromJson(json['Record']),
    );
  }
}
