class RealEstateHistory {
  String ownerId;
  String realEstateId;

  RealEstateHistory({
    required this.ownerId,
    required this.realEstateId,
  });

  factory RealEstateHistory.fromJson(Map<String, dynamic> json) {
    return RealEstateHistory(
      ownerId: json['owner_id'],
      realEstateId: json['real_estate_id'],
    );
  }
}
