import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';

class RealEstate {
  String key;
  RealEstateRecord record;

  RealEstate({required this.key, required this.record});

  factory RealEstate.fromJson(Map<String, dynamic> json) {
    return RealEstate(
      key: json['Key'],
      record: RealEstateRecord.fromJson(json['Record']),
    );
  }
}
