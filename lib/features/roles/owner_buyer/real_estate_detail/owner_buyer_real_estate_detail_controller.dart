import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/components/buy_real_estate/owner_buyer_buy_real_estate_component.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/components/check_sales_progress/owner_buyer_check_sales_progress_component.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/components/sell_real_estate/owner_buyer_sell_real_estate_component.dart';

class OwnerBuyerRealEstateDetailController extends RealEstateDetailController {
  final authController = Get.find<AuthController>();
  late RealEstateDetailInformationController
      _realEstateDetailInformationController;

  @override
  Widget showActionButton() {
    return GetBuilder<RealEstateDetailInformationController>(
      builder: (realEstateInformationController) {
        if (realEstateInformationController.isShimmering) {
          return const SizedBox();
        }

        _realEstateDetailInformationController =
            realEstateInformationController;

        if (_isSeller) {
          return showActionButtonForSeller();
        } else {
          return showActionButtonForBuyer();
        }
      },
    );
  }

  Widget showActionButtonForBuyer() {
    if (_isOpenToSell) {
      return OwnerBuyerBuyRealEstateComponent(id: _realEstateId);
    } else {
      return const ElevatedButton(onPressed: null, child: Text('Cannot Buy'));
    }
  }

  Widget showActionButtonForSeller() {
    if (_isOpenToSell) {
      return OwnerBuyerCheckSalesProgressComponent(id: _realEstateId);
    } else {
      return OwnerBuyerSellRealEstateComponent(id: _realEstateId);
    }
  }

  bool get _isOpenToSell =>
      _realEstateDetailInformationController.dataObj!.data!.isOpenToSell
          .toLowerCase() ==
      'true';

  bool get _isSeller =>
      authController.user?.id ==
      _realEstateDetailInformationController.dataObj?.data!.ownerId;

  String get _realEstateId =>
      _realEstateDetailInformationController.dataObj!.data!.id;
}
