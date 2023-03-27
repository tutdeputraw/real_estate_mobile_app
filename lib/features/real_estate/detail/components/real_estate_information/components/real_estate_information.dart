import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/widgets/real_estate_detail_field.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/utils/widgets/card_container.dart';

class RealEstateDetailInformationComponent extends StatelessWidget {
  final RealEstateRecord data;

  const RealEstateDetailInformationComponent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        children: [
          RealEstateDetailField(
            field: 'id',
            value: data.id,
          ),
          RealEstateDetailField(
            field: 'acreLot',
            value: data.acreLot,
          ),
          RealEstateDetailField(
            field: 'bath',
            value: data.bath,
          ),
          RealEstateDetailField(
            field: 'bed',
            value: data.bed,
          ),
          RealEstateDetailField(
            field: 'city',
            value: data.city,
          ),
          RealEstateDetailField(
            field: 'fullAddress',
            value: data.fullAddress,
          ),
          RealEstateDetailField(
            field: 'houseSize',
            value: data.houseSize,
          ),
          RealEstateDetailField(
            field: 'isOpenToSell',
            value: data.isOpenToSell,
          ),
          RealEstateDetailField(
            field: 'ownerId',
            value: data.ownerId,
          ),
          RealEstateDetailField(
            field: 'price',
            value: data.price,
          ),
          RealEstateDetailField(
            field: 'state',
            value: data.state,
          ),
          RealEstateDetailField(
            field: 'street',
            value: data.street,
          ),
          RealEstateDetailField(
            field: 'zipCode',
            value: data.zipCode,
          ),
        ],
      ),
    );
  }
}
