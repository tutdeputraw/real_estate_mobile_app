import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_history/real_estate_detail_history_page.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/real_estate_detail_information_page.dart';

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
              const RealEstateDetailInformationPage(),
              ElevatedButton(
                onPressed: () {},
                child: const Text("sell real estate"),
              ),
              const RealEstateDetailHistoryPage(),
            ],
          ),
        ),
      ),
    );
  }
}
