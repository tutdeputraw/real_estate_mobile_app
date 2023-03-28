import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_page.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_page.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/real_estate_detail_controller.dart';

class RealEstateDetailPage extends StatelessWidget {
  const RealEstateDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Estate Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Real Estate Information",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const RealEstateDetailInformationPage(),
              GetBuilder<RealEstateDetailController>(builder: (controller) {
                return controller.showActionButton();
              }),
              const SizedBox(height: 8),
              const Text(
                "Real Estate History",
                textAlign: TextAlign.center,
              ),
              const RealEstateDetailHistoryPage(),
            ],
          ),
        ),
      ),
    );
  }
}
