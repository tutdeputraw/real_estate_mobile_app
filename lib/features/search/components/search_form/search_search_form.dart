import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/search/search_controller.dart';

class SearchSearchForm extends StatelessWidget {
  const SearchSearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (controller) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: controller.teKeyword,
          ),
          ElevatedButton(
            onPressed: () => controller.searchOnClicked(),
            child: Text("search"),
          ),
        ],
      );
    });
  }
}
