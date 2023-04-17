import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/home/widgets/owner_buyer_home_button.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';

class BrokerHomePage extends StatelessWidget {
  const BrokerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            OwnerBuyerHomeButton(
              title: 'List Real Estate',
              routePath: PageNames.BROKER_REAL_ESTATE_OPEN_TO_SELL,
            )
          ],
        ),
      ),
    );
  }
}
