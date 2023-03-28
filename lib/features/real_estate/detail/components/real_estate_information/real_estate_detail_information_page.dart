import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/components/real_estate_information.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_controller.dart';
import 'package:real_estate_mobile_app/utils/widgets/state_handle_widget.dart';

class RealEstateDetailInformationPage extends StatelessWidget {
  const RealEstateDetailInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RealEstateDetailInformationController>(
      builder: (controller) {
        return StateHandleWidget(
          loadingEnabled: controller.isShimmering,
          emptySubtitle: 'empty subtitle',
          errorEnabled: controller.isError,
          errorTitle: 'error title',
          onRetryPressed: () {
            controller.refreshPage();
          },
          body: controller.dataObj != null
              ? RealEstateDetailInformationComponent(
                  data: controller.dataObj!.data!,
                )
              : const SizedBox(),
        );
      },
    );
  }
}
