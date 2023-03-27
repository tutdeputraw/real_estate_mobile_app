import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/widgets/real_estate_detail_field.dart';
import 'package:real_estate_mobile_app/utils/widgets/card_container.dart';
import 'package:real_estate_mobile_app/utils/widgets/state_handle_widget.dart';

class RealEstateDetailHistoryPage extends StatelessWidget {
  const RealEstateDetailHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RealEstateDetailHistoryController>(builder: (controller) {
      return StateHandleWidget(
        loadingEnabled: controller.isShimmering,
        emptySubtitle: 'empty subtitle',
        errorEnabled: controller.isError,
        errorTitle: 'error title',
        onRetryPressed: () {
          controller.refreshPage();
        },
        body: CardContainer(
          child: ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            itemCount: controller.dataList.length,
            itemBuilder: (ctx, index) {
              final data = controller.dataList[index];
              return RealEstateDetailField(
                field: 'Real Estate ID: ${data.realEstateId}',
                value: 'Owner ID: ${data.ownerId}',
              );
            },
          ),
        ),
      );
    });
  }
}
