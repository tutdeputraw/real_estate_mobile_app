import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/features/roles/owner_buyer/home/widgets/owner_buyer_home_button.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';

class OwnerBuyerHomePage extends StatelessWidget {
  const OwnerBuyerHomePage({super.key});

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
              routePath: PageNames.OWNER_BUYER_HOME_MY_REAL_ESTATE,
              title: 'My Real Estate',
            ),
          ],
        ),
      ),
    );
  }
}
