import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';

class SearchSearchedItem extends StatelessWidget {
  final RealEstate data;

  const SearchSearchedItem({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed(
          PageNames.SEARCH_REAL_ESTATE_DETAIL,
          arguments: data.record.id,
        );
      },
      title: Text(
          '${data.record.id} - [full address: ${data.record.fullAddress}]'),
    );
  }
}
