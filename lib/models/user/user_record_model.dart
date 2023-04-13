class UserRecord {
  String? organizationName;
  String? email;
  String? id;
  String? name;
  String? msp;
  String? npwpNumber;
  String? phoneNumber;

  UserRecord({
    this.organizationName,
    this.name,
    this.email,
    this.id,
    this.msp,
    this.npwpNumber,
    this.phoneNumber,
  });

  factory UserRecord.fromJson(Map<String, dynamic> json) {
    return UserRecord(
      organizationName: json['organization_name'],
      name: json['userModel_name'],
      email: json['userModel_email'],
      id: json['userModel_id'],
      npwpNumber: json['userModel_npwp_number'],
      phoneNumber: json['userModel_phone_number'],
      msp: json['msp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "organization_name": organizationName,
      "userModel_name": name,
      "userModel_email": email,
      "userModel_id": id,
      "userModel_npwp_number": npwpNumber,
      "userModel_phone_number": phoneNumber,
      'msp': msp,
    };
  }
}
