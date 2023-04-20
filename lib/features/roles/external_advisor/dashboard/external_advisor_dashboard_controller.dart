import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/home/external_advisor_home_page.dart';
import 'package:real_estate_mobile_app/features/search/search_page.dart';
import 'package:real_estate_mobile_app/features/settings/settings_page.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_controller.dart';

class ExternalAdvisorDashboardController extends DashboardController {
  @override
  List<Widget> getPages() {
    return [
      ExternalAdvisorHomePage(),
      SearchPage(),
      SettingsPage(),
    ];
  }
}
