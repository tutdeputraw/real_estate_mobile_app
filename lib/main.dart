import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';
import 'package:real_estate_mobile_app/routes/page_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: PageRoutes.pages,
      initialRoute: PageNames.OWNER_BUYER_DASHBOARD,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
