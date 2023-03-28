import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';

class OwnerBuyerRealEstateDetailController extends RealEstateDetailController {
  @override
  Widget showActionButton() {
    final authController = Get.find<AuthController>();
    return GetBuilder<RealEstateDetailInformationController>(
      builder: (realEstateInformationController) {
        if (realEstateInformationController.isShimmering) {
          return const SizedBox();
        }

        final ownerIdA = authController.user?.id;
        final ownerIdB = realEstateInformationController.dataObj?.data.ownerId;

        if (ownerIdA == ownerIdB) {
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
        }

        return ElevatedButton(
          onPressed: _isOpenToSell(realEstateInformationController)
              ? buyRealEstateOnClicked
              : null,
          child: const Text("buy"),
        );
      },
    );
  }

  bool _isOpenToSell(RealEstateDetailInformationController controller) {
    return controller.dataObj?.data.isOpenToSell.toLowerCase() == 'true';
  }

  void buyRealEstateOnClicked() {
    print('buy real estate clicked');
  }
}
