import 'package:real_estate_mobile_app/models/api_response_list.dart';
import 'package:real_estate_mobile_app/models/real_estate/real_estate_record_model.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller.dart';

class MyRealEstateController
    extends BaseController<APIResponseList<RealEstateRecord>> {
  @override
  void onInit() {
    super.onInit();
    refreshPage();
  }

  @override
  void loadNextPage() {
    callAPI();
  }

  @override
  void refreshPage() {
    callAPI(page: super.page.value + 1);
  }

  @override
  Future<void> callAPI({int page = 1}) {
    throw UnimplementedError();
  }

  @override
  get statusData => List;
}
