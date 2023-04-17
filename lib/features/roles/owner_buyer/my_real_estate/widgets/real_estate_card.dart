import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';

class RealEstateCard extends StatelessWidget {
  final RealEstateRecord data;
  final Function onTap;

  const RealEstateCard({
    super.key,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap(),
      title: Text('Real Estate-${data.id} ${data.city}'),
    );
  }
}
