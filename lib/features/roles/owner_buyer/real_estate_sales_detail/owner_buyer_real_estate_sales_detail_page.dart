import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_sales_detail/owner_buyer_real_estate_sales_detail_controller.dart';

class OwnerBuyerRealEstateSalesDetailPage extends StatelessWidget {
  const OwnerBuyerRealEstateSalesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Estate Sales Detail'),
      ),
      body: GetBuilder<OwnerBuyerRealEstateSalesDetailController>(
        builder: (controller) {
          return Column(
            children: [
              const Text(
                "The Real Estate Sale Progress is Still Under Development",
              ),
              ElevatedButton(
                onPressed: controller.cancelSale,
                child: Text('Cancel Sale'),
              ),
            ],
          );
        },
      ),
    );
  }
}
