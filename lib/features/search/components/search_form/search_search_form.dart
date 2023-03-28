
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/search/search_controller.dart';

class SearchSearchForm extends StatelessWidget {
  const SearchSearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: controller.teKeyword,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => controller.searchOnClicked(),
              child: Text("search"),
            ),
          ],
        ),
      );
    });
  }
}
