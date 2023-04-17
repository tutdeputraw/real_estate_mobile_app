import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/roles/broker/list_real_estate_open_to_sell/broker_list_real_estate_open_to_sell_controller.dart';
import 'package:real_estate_mobile_app/features/roles/broker/list_real_estate_open_to_sell/list_builder/broker_list_real_estate_open_to_sell_list_builder.dart';
import 'package:real_estate_mobile_app/utils/widgets/state_handle_widget.dart';

class BrokerListRealEstateOpenToSellPage extends StatelessWidget {
  const BrokerListRealEstateOpenToSellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Real Estate List")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<BrokerListRealEstateOpenToSellController>(
          builder: (controller) {
            return StateHandleWidget(
              loadingEnabled: controller.isShimmering,
              emptySubtitle: 'empty subtitle',
              errorEnabled: controller.isError,
              errorTitle: 'error title',
              onRetryPressed: () {
                controller.refreshPage();
              },
              body: const BrokerListRealEstateOpenToSellListBuilder(),
            );
          },
        ),
      ),
    );
  }
}
