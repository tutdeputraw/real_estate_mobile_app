import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:real_estate_mobile_app/features/real_estate/sales_record/real_estate_sales_record_controller.dart';

class BrokerRealEstateDetailForm extends StatelessWidget {
  const BrokerRealEstateDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RealEstateSalesRecordController>(
      builder: (controller) {
        if (controller.dataObj == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            TextFormField(
              initialValue: controller.dataObj?.propertyAgentId,
              decoration: const InputDecoration(
                labelText: 'Property Agent Id',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: controller.dataObj?.propertyAdvisorId,
              decoration: const InputDecoration(
                labelText: 'Property Advisor Id',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
