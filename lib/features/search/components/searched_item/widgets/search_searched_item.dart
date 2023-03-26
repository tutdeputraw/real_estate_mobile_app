import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_model.dart';

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
        // Get.toNamed(page)
      },
      title: Text(data.record.fullAddress),
    );
  }
}
