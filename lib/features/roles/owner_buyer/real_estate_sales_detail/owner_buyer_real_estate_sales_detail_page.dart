import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_page.dart';
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
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("real estate sales record"),
                const RealEstateSalesRecordPage(),
                ElevatedButton(
                  onPressed: controller.cancelSale,
                  child: Text('Cancel Sale'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
