import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_helper.dart';

class RetrofitConfig {
  static void defineApiURL(String organization) {
    switch (organization.toLowerCase()) {
      case 'org1':
        RetrofitHelper.baseUrl = "http://34.125.9.20:4000/api";
        break;
      case 'org2':
        RetrofitHelper.baseUrl = "http://35.234.252.159:4000/api";
        break;
      case 'org3':
        RetrofitHelper.baseUrl = "http://34.147.94.25:4000/api";
        break;
      default:
    }
  }
}
