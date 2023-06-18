import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_page.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_page.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_page.dart';
import 'package:real_estate_mobile_app/features/roles/external_advisor/real_estate_detail/external_advisor_real_estate_detail_controller.dart';

class ExternalAdvisorRealEstateDetailPage extends StatelessWidget {
  const ExternalAdvisorRealEstateDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Real Estate Detail')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<ExternalAdvisorRealEstateDetailController>(
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  const SizedBox(height: 8),
                  TextFormField(
                    // initialValue: controller.dataObj?.propertyAgentId,
                    controller: controller.teRealEstateAssessment,
                    keyboardType: TextInputType.multiline,
                    minLines: 5, //Normal textInputField will be displayed
                    maxLines: 10,
                    decoration: const InputDecoration(
                      labelText: 'Real Estate Assessment',
                      // errorText: 'Error message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: controller.submitRealEstateAssessment,
                    child: const Text('Submit'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
