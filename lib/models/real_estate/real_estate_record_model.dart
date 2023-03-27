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
      acreLot: json['acre_lot'],
      bath: json['bath'],
      bed: json['bed'],
      city: json['city'],
      fullAddress: json['full_address'],
      houseSize: json['house_size'],
      id: json['id'],
      isOpenToSell: json['is_open_to_sell'],
      ownerId: json['owner_id'],
      price: json['price'],
      state: json['state'],
      street: json['street'],
      zipCode: json['zip_code'],
    );
  }
}
