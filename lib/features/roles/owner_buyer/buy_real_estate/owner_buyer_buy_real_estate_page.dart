import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/buy_real_estate/owner_buyer_buy_real_estate_controller.dart';

class OwnerBuyerBuyRealEstatePage extends StatelessWidget {
  const OwnerBuyerBuyRealEstatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Real Estate'),
      ),
      body: GetBuilder<OwnerBuyerBuyRealEstateController>(
        builder: (controller) {
          return Column(
            children: [
              const Text("Buy Real Estate Form is Still Under Development"),
              ElevatedButton(
                onPressed: controller.buyRealEstate,
                child: const Text('Buy Real Estate'),
              ),
            ],
          );
        },
      ),
    );
  }
}
