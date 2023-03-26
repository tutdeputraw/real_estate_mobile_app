import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OwnerBuyerHomeButton extends StatelessWidget {
  final String routePath;
  final String title;

  const OwnerBuyerHomeButton({
    super.key,
    required this.routePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(routePath);
      },
      child: Text(title),
    );
  }
}
