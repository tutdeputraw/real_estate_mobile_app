// ignore_for_file: constant_identifier_names

enum UserRole { Org1, Org2, Org3 }

Map<String, UserRole> convertToUserRole = {
  'org1': UserRole.Org1,
  'org2': UserRole.Org2,
  'org3': UserRole.Org3,
};

class User {
  String? organizationName;
  String? userName;

  User({
    required this.organizationName,
    required this.userName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      organizationName: json['organization_name'],
      userName: json['user_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "organization_name": organizationName,
      "user_name": userName,
    };
  }
}
