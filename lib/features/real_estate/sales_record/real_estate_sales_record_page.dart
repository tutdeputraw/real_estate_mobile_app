import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/widgets/real_estate_detail_field.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_controller.dart';
import 'package:real_estate_mobile_app/utils/widgets/card_container.dart';
import 'package:real_estate_mobile_app/utils/widgets/state_handle_widget.dart';

class RealEstateSalesRecordPage extends StatelessWidget {
  const RealEstateSalesRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RealEstateSalesRecordController>(builder: (controller) {
      return StateHandleWidget(
        loadingEnabled: controller.isShimmering,
        emptySubtitle: 'empty subtitle',
        errorEnabled: controller.isError,
        errorTitle: 'error title',
        onRetryPressed: () {
          controller.refreshPage();
        },
        body: CardContainer(
          child: Column(
            children: [
              RealEstateDetailField(
                field: 'id',
                value: controller.dataObj?.id ?? 'null',
              ),
              RealEstateDetailField(
                field: 'interestUsers',
                value: controller.dataObj?.interestUsers ?? 'null',
              ),
              RealEstateDetailField(
                field: 'phase',
                value: controller.dataObj?.phase ?? 'null',
              ),
              RealEstateDetailField(
                field: 'propertyAdvisorId',
                value: controller.dataObj?.propertyAdvisorId ?? 'null',
              ),
              RealEstateDetailField(
                field: 'propertyAgentId',
                value: controller.dataObj?.propertyAgentId ?? 'null',
              ),
              RealEstateDetailField(
                field: 'sellerId',
                value: controller.dataObj?.sellerId ?? 'null',
              ),
              RealEstateDetailField(
                field: 'realEstateAssessment',
                value: controller.dataObj?.realEstateAssessment ?? 'null',
              ),
            ],
          ),
        ),
      );
    });
  }
}
