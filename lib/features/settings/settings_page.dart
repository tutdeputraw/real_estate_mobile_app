import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/settings/settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => controller.signOutOnClicked(),
              child: const Text("Sign Out"),
            )
          ],
        ),
      ),
    );
  }
}
