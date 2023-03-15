import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/broker/dashboard/broker_dashboard_binding.dart';
import 'package:real_estate_mobile_app/features/external_advisor/dashboard/external_advisor_dashboard_binding.dart';
import 'package:real_estate_mobile_app/features/owner_buyer/dashboard/owner_buyer_dashboard_binding.dart';
import 'package:real_estate_mobile_app/features/settings/settings_binding.dart';
import 'package:real_estate_mobile_app/features/settings/settings_page.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_page.dart';

class PageRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: PageNames.SETTINGS,
      page: () => const SettingsPage(),
      binding: SettingsBinding(),
    ),

    // owner buyer
    GetPage(
      name: PageNames.OWNER_BUYER_DASHBOARD,
      page: () => const DashboardPage(),
      binding: OwnerBuyerDashboardBinding(),
    ),

    // external advisor
    GetPage(
      name: PageNames.EXTERNAL_ADVISOR_DASHBOARD,
      page: () => const DashboardPage(),
      binding: ExternalAdvisorDashboardBinding(),
    ),

    // broker
    GetPage(
      name: PageNames.BROKER_DASHBOARD,
      page: () => const DashboardPage(),
      binding: BrokerDashboardBinding(),
    ),
  ];
}
