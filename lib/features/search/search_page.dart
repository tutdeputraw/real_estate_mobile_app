import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/search/search_controller.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<SearchController>(builder: (controller) {
    //   return Column(
    //     children: [
    //       TextField(),
    //       ElevatedButton(
    //         onPressed: () => controller.searchOnClicked(),
    //         child: Text("search"),
    //       )
    //     ],
    //   );
    // });
    return Scaffold(
      appBar: AppBar(),
      body: Text("search"),
    );
  }
}
