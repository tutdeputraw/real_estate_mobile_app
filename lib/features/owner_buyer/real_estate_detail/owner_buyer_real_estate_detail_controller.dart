import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';

class OwnerBuyerRealEstateDetailController extends RealEstateDetailController {
  @override
  Widget showActionButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text("sell real estate"),
    );
  }
}
