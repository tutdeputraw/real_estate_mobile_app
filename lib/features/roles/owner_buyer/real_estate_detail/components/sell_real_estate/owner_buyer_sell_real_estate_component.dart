import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/components/sell_real_estate/owner_buyer_sell_real_estate_component_controller.dart';

class OwnerBuyerSellRealEstateComponent extends StatelessWidget {
  final String id;

  const OwnerBuyerSellRealEstateComponent({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OwnerBuyerSellRealEstateComponentController>(
      init: OwnerBuyerSellRealEstateComponentController(realEstateId: id),
      builder: (controller) {
        return ElevatedButton(
          onPressed: controller.sellRealEstate,
          child: const Text('Sell Real Estate'),
        );
      },
    );
  }
}
