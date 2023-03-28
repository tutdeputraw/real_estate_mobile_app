import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';

class OwnerBuyerRealEstateDetailController extends RealEstateDetailController {
  @override
  Widget showActionButton() {
    return GetBuilder<RealEstateDetailInformationController>(
      builder: (realEstateInformationController) {
        if (realEstateInformationController.isShimmering) {
          return const SizedBox();
        }

        final data = realEstateInformationController.dataObj!.data;

        if (data.isOpenToSell.toLowerCase() == 'true') {
          return ElevatedButton(
            onPressed: () {},
            child: const Text("check real estate progress"),
          );
        } else {
          return ElevatedButton(
            onPressed: () {},
            child: const Text("sell real estate"),
          );
        }
      },
    );
  }
}
