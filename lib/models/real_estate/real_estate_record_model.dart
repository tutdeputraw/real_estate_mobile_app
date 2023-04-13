class RealEstateRecord {
  String acreLot;
  String bath;
  String bed;
  String city;
  String fullAddress;
  String houseSize;
  String id;
  String isOpenToSell;
  String ownerId;
  String price;
  String state;
  String street;
  String zipCode;

  RealEstateRecord({
    required this.id,
    required this.acreLot,
    required this.bath,
    required this.bed,
    required this.city,
    required this.fullAddress,
    required this.houseSize,
    required this.isOpenToSell,
    required this.ownerId,
    required this.price,
    required this.state,
    required this.street,
    required this.zipCode,
  });

  factory RealEstateRecord.fromJson(Map<String, dynamic> json) {
    return RealEstateRecord(
      acreLot: json['realEstateModel_acre_lot'],
      bath: json['realEstateModel_bath'],
      bed: json['realEstateModel_bed'],
      city: json['realEstateModel_city'],
      fullAddress: json['realEstateModel_full_address'],
      houseSize: json['realEstateModel_house_size'],
      id: json['realEstateModel_id'],
      isOpenToSell: json['realEstateModel_is_open_to_sell'],
      ownerId: json['realEstateModel_owner_id'],
      price: json['realEstateModel_price'],
      state: json['realEstateModel_state'],
      street: json['realEstateModel_street'],
      zipCode: json['realEstateModel_zip_code'],
    );
  }
}
