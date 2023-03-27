import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_binding.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';
import 'package:real_estate_mobile_app/routes/page_routes.dart';

void main() async {
  AuthBinding().dependencies();
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: PageRoutes.pages,
      debugShowCheckedModeBanner: false,
      initialRoute: PageNames.LOADING,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
