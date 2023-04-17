class RealEstateSalesRecordModel {
  String id;
  String interestUsers;
  String phase;
  String propertyAdvisorId;
  String propertyAgentId;
  String realEstateAssessment;
  String sellerId;

  RealEstateSalesRecordModel({
    required this.id,
    required this.interestUsers,
    required this.phase,
    required this.propertyAdvisorId,
    required this.propertyAgentId,
    required this.realEstateAssessment,
    required this.sellerId,
  });

  factory RealEstateSalesRecordModel.fromJson(Map<String, dynamic> json) {
    return RealEstateSalesRecordModel(
      id: json['RealEstateSalesRecordModel_id'],
      interestUsers: json['RealEstateSalesRecordModel_interest_users'],
      phase: json['RealEstateSalesRecordModel_phase'],
      propertyAdvisorId: json['RealEstateSalesRecordModel_property_advisor_id'],
      propertyAgentId: json['RealEstateSalesRecordModel_property_agent_id'],
      realEstateAssessment:
          json['RealEstateSalesRecordModel_real_estate_assessment'],
      sellerId: json['RealEstateSalesRecordModel_seller_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RealEstateSalesRecordModel_id'] = id;
    data['RealEstateSalesRecordModel_interest_users'] = interestUsers;
    data['RealEstateSalesRecordModel_phase'] = phase;
    data['RealEstateSalesRecordModel_property_advisor_id'] = propertyAdvisorId;
    data['RealEstateSalesRecordModel_property_agent_id'] = propertyAgentId;
    data['RealEstateSalesRecordModel_real_estate_assessment'] =
        realEstateAssessment;
    data['RealEstateSalesRecordModel_seller_id'] = sellerId;
    return data;
  }
}
