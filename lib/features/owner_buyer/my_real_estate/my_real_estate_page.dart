import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/owner_buyer/my_real_estate/components/real_estate_list.dart';
import 'package:real_estate_mobile_app/features/owner_buyer/my_real_estate/my_real_estate_controller.dart';
import 'package:real_estate_mobile_app/utils/widgets/state_handle_widget.dart';

class MyRealEstatePage extends StatelessWidget {
  const MyRealEstatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Real Estate')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<MyRealEstateController>(builder: (controller) {
          return StateHandleWidget(
            loadingEnabled: controller.isShimmering,
            emptySubtitle: 'empty subtitle',
            errorEnabled: controller.isError,
            errorTitle: 'error title',
            onRetryPressed: () {
              controller.refreshPage();
            },
            body: const MyRealEstateList(),
          );
        }),
      ),
    );
  }
}
