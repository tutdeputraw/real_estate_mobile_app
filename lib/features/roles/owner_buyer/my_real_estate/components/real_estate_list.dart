import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/my_real_estate/owner_buyer_my_real_estate_controller.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/my_real_estate/widgets/real_estate_card.dart';

class MyRealEstateList extends StatelessWidget {
  const MyRealEstateList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyRealEstateController>(builder: (controller) {
      return ListView.builder(
        shrinkWrap: true,
        controller: ScrollController(),
        itemCount: controller.dataObj?.data.length ?? 0,
        itemBuilder: (ctx, index) => MyRealEstateCard(
          data: controller.dataObj!.data[index],
          index: index,
        ),
      );
    });
  }
}
