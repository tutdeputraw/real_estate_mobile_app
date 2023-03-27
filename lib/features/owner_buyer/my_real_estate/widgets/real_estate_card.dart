import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';

class MyRealEstateCard extends StatelessWidget {
  final RealEstateRecord data;
  final int index;

  const MyRealEstateCard({
    super.key,
    required this.data,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed(PageNames.REAL_ESTATE_DETAIL, arguments: data.id);
      },
      title: Text('Real Estate-${data.id} ${data.city}'),
    );
  }
}
