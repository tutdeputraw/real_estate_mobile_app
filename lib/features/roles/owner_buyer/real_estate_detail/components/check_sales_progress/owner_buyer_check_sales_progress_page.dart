import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/components/check_sales_progress/owner_buyer_check_sales_progress_controller.dart';

class OwnerBuyerCheckSalesProgressPage extends StatelessWidget {
  final String id;

  const OwnerBuyerCheckSalesProgressPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OwnerBuyerCheckSalesProgressController>(
      init: OwnerBuyerCheckSalesProgressController(realEstateId: id),
      builder: (controller) {
        return ElevatedButton(
          onPressed: controller.checkSalesProgress,
          child: const Text('Check Real Estate Sales Progress'),
        );
      },
    );
  }
}
