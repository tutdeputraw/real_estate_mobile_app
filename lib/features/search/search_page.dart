
import 'package:flutter/material.dart';
import 'package:real_estate_mobile_app/features/search/components/search_form/search_search_form.dart';
import 'package:real_estate_mobile_app/features/search/components/searched_item/search_searched_items.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          SearchSearchForm(),
          SearchSearchedItems(),
        ],
      ),
    );
  }
}
