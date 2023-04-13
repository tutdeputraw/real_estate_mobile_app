import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/components/buy_real_estate/owner_buyer_buy_real_estate_component_controller.dart';

class OwnerBuyerBuyRealEstateComponent extends StatelessWidget {
  final String id;

  const OwnerBuyerBuyRealEstateComponent({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OwnerBuyerBuyRealEstateComponentController>(
      init: OwnerBuyerBuyRealEstateComponentController(realEstateId: id),
      builder: (controller) {
        return ElevatedButton(
          onPressed: controller.buyRealEstate,
          child: const Text('Buy Real Estate'),
        );
      },
    );
  }
}
