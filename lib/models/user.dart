// ignore_for_file: constant_identifier_names

enum UserRole { BUYER_OWNER, BROKER, EXTERNAL_ADVISOR }

class User {
  UserRole role;

  User({
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      role: json['user_role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
