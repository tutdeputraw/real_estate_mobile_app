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
      name: json['name'],
      email: json['email'],
      id: json['id'],
      npwpNumber: json['npwp_number'],
      phoneNumber: json['phone_number'],
      msp: json['msp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "organization_name": organizationName,
      "name": name,
      "email": email,
      "id": id,
      "npwp_number": npwpNumber,
      "phone_number": phoneNumber,
      'msp': msp,
    };
  }
}
