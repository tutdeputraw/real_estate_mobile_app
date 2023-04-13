import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/components/check_sales_progress/owner_buyer_check_sales_progress_component_controller.dart';

class OwnerBuyerCheckSalesProgressComponent extends StatelessWidget {
  final String id;

  const OwnerBuyerCheckSalesProgressComponent({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OwnerBuyerCheckSalesProgressComponentController>(
      init: OwnerBuyerCheckSalesProgressComponentController(realEstateId: id),
      builder: (controller) {
        return ElevatedButton(
          onPressed: controller.checkSalesProgress,
          child: const Text('Check Real Estate Sales Progress'),
        );
      },
    );
  }
}
