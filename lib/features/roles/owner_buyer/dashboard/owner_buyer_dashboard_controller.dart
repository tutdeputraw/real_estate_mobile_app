import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/home/owner_buyer_home_page.dart';
import 'package:real_estate_mobile_app/features/search/search_page.dart';
import 'package:real_estate_mobile_app/features/settings/settings_page.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_controller.dart';

class OwnerBuyerDashboardController extends DashboardController {
  @override
  List<Widget> getPages() {
    return const [
      OwnerBuyerHomePage(),
      SearchPage(),
      SettingsPage(),
    ];
  }
}
