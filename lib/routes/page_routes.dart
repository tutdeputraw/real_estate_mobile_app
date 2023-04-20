import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/sign_in/sign_in_binding.dart';
import 'package:real_estate_mobile_app/features/auth/sign_in/sign_in_page.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_page.dart';
import 'package:real_estate_mobile_app/features/roles/broker/dashboard/broker_dashboard_binding.dart';
import 'package:real_estate_mobile_app/features/roles/broker/list_real_estate_open_to_sell/broker_list_real_estate_open_to_sell_binding.dart';
import 'package:real_estate_mobile_app/features/roles/broker/list_real_estate_open_to_sell/broker_list_real_estate_open_to_sell_page.dart';
import 'package:real_estate_mobile_app/features/roles/broker/real_estate_detail/broker_real_estate_detail_binding.dart';
import 'package:real_estate_mobile_app/features/roles/broker/real_estate_detail/broker_real_estate_detail_page.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/dashboard/external_advisor_dashboard_binding.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/list_real_estate_open_to_sell/external_advisor_list_real_estate_open_to_sell_binding.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/real_estate_detail/external_advisor_real_estate_detail_binding.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/real_estate_detail/external_advisor_real_estate_detail_page.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/buy_real_estate/owner_buyer_buy_real_estate_binding.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/buy_real_estate/owner_buyer_buy_real_estate_page.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/dashboard/owner_buyer_dashboard_binding.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/my_real_estate/owner_buyer_my_real_estate_binding.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/my_real_estate/owner_buyer_my_real_estate_page.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_detail/owner_buyer_real_estate_detail_binding.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_sales_detail/owner_buyer_real_estate_sales_detail_binding.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/real_estate_sales_detail/owner_buyer_real_estate_sales_detail_page.dart';
import 'package:real_estate_mobile_app/features/settings/components/user_info/user_info_binding.dart';
import 'package:real_estate_mobile_app/features/settings/components/user_info/user_info_page.dart';
import 'package:real_estate_mobile_app/features/settings/settings_binding.dart';
import 'package:real_estate_mobile_app/features/settings/settings_page.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';
import 'package:real_estate_mobile_app/utils/layouts/dashboard/dashboard_page.dart';
import 'package:real_estate_mobile_app/utils/widgets/loading_page.dart';

class PageRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: PageNames.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: PageNames.LOADING,
      page: () => const LoadingPage(),
    ),

    // settings
    GetPage(
      name: PageNames.SETTINGS,
      page: () => const SettingsPage(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: PageNames.SETTINGS_USER_INFO,
      page: () => const UserInfoPage(),
      binding: UserInfoBinding(),
    ),

    // owner buyer
    GetPage(
      name: PageNames.OWNER_BUYER_DASHBOARD,
      page: () => const DashboardPage(),
      binding: OwnerBuyerDashboardBinding(),
    ),
    GetPage(
      name: PageNames.OWNER_BUYER_HOME_MY_REAL_ESTATE,
      page: () => const MyRealEstatePage(),
      binding: MyRealEstateBinding(),
    ),
    GetPage(
      name: PageNames.OWNER_BUYER_REAL_ESTATE_DETAIL,
      page: () => const RealEstateDetailPage(),
      binding: OwnerBuyerRealEstateDetailBinding(),
    ),
    GetPage(
      name: PageNames.OWNER_BUYER_REAL_ESTATE_SALES_DETAIL,
      page: () => const OwnerBuyerRealEstateSalesDetailPage(),
      binding: OwnerBuyerRealEstateSalesDetailBinding(),
    ),
    GetPage(
      name: PageNames.OWNER_BUYER_BUY_REAL_ESTATE,
      page: () => const OwnerBuyerBuyRealEstatePage(),
      binding: OwnerBuyerBuyRealEstateBinding(),
    ),

    // external advisor
    GetPage(
      name: PageNames.EXTERNAL_ADVISOR_DASHBOARD,
      page: () => const DashboardPage(),
      binding: ExternalAdvisorDashboardBinding(),
    ),
    GetPage(
      name: PageNames.EXTERNAL_ADVISOR_REAL_ESTATE_OPEN_TO_SELL,
      page: () => const BrokerListRealEstateOpenToSellPage(),
      binding: ExternalAdvisorListRealEstateOpenToSellBinding(),
    ),
    GetPage(
      name: PageNames.EXTERNAL_ADVISOR_REAL_ESTATE_DETAIL,
      page: () => const ExternalAdvisorRealEstateDetailPage(),
      binding: ExternalAdvisorRealEstateDetailBinding(),
    ),

    // broker
    GetPage(
      name: PageNames.BROKER_DASHBOARD,
      page: () => const DashboardPage(),
      binding: BrokerDashboardBinding(),
    ),
    GetPage(
      name: PageNames.BROKER_REAL_ESTATE_OPEN_TO_SELL,
      page: () => const BrokerListRealEstateOpenToSellPage(),
      binding: BrokerListRealEstateOpenToSellBinding(),
    ),
    GetPage(
      name: PageNames.BROKER_REAL_ESTATE_DETAIL,
      page: () => const BrokerRealEstateDetailPage(),
      binding: BrokerRealEstateDetailBinding(),
    ),
  ];
}
