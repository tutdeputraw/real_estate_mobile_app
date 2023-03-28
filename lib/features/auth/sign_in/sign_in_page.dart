import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/sign_in/sign_in_controller.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GetBuilder<SignInController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Real Estate",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: controller.teOrg,
                    decoration: const InputDecoration(
                      hintText: 'Org Name',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: controller.teMSP,
                    decoration: const InputDecoration(
                      hintText: 'User MSP',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: controller.teName,
                    decoration: const InputDecoration(
                      hintText: 'User Name',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: controller.teEmail,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: controller.onSubmit,
                    child: const Text('Submit'),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
