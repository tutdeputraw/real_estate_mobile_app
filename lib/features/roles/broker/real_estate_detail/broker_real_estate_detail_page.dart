import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_page.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_page.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_controller.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_page.dart';
import 'package:real_estate_mobile_app/features/roles/broker/real_estate_detail/broker_real_estate_detail_controller.dart';
import 'package:real_estate_mobile_app/features/roles/broker/real_estate_detail/components/broker_real_estate_detail_form.dart';

class BrokerRealEstateDetailPage extends StatelessWidget {
  const BrokerRealEstateDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Real Estate Detail')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<BrokerRealEstateDetailController>(
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  const Text("real estate information"),
                  const RealEstateDetailInformationPage(),
                  const SizedBox(height: 16),
                  const Text("real estate history"),
                  const RealEstateDetailHistoryPage(),
                  const SizedBox(height: 16),
                  const Text("real estate sales record"),
                  const RealEstateSalesRecordPage(),
                  const SizedBox(height: 16),
                  const Text("real estate sales Form"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: controller.preparationOnClicked,
                        child: const Text('Preparation'),
                      ),
                      ElevatedButton(
                        onPressed: controller.dueDiligenceOnCLicked,
                        child: const Text('Due diligence'),
                      ),
                      ElevatedButton(
                        onPressed: controller.completionOnCLicked,
                        child: const Text('Completion'),
                      ),
                    ],
                  ),
                  const BrokerRealEstateDetailForm(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
