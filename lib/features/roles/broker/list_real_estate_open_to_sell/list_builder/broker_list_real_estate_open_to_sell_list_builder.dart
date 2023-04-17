import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/list_real_estate_open_to_sell/broker_list_real_estate_open_to_sell_controller.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/my_real_estate/widgets/real_estate_card.dart';

class BrokerListRealEstateOpenToSellListBuilder extends StatelessWidget {
  const BrokerListRealEstateOpenToSellListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BrokerListRealEstateOpenToSellController>(
      builder: (controller) {
        return ListView.builder(
          shrinkWrap: true,
          controller: ScrollController(),
          itemCount: controller.dataObj?.data.length ?? 0,
          itemBuilder: (ctx, index) {
            final data = controller.dataObj!.data[index].record;
            return RealEstateCard(
              data: data,
              onTap: () => controller.cardOnTap(data),
            );
          },
        );
      },
    );
  }
}
