import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/owner_buyer/home/components/my_real_estate/my_real_estate_controller.dart';

class MyRealEstatePage extends StatelessWidget {
  const MyRealEstatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Real Estate')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<MyRealEstateController>(builder: (controller) {
          return ListView.builder(
            // itemCount: controller,
            itemBuilder: (ctx, index) => Text('data $index'),
          );
        }),
      ),
    );
  }
}
