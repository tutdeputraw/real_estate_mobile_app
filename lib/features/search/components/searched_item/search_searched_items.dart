import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/search/components/searched_item/widgets/search_searched_item.dart';
import 'package:real_estate_mobile_app/features/search/search_controller.dart';
import 'package:real_estate_mobile_app/utils/widgets/state_handle_widget.dart';

class SearchSearchedItems extends StatelessWidget {
  final Function(BuildContext ctx, int index)? items;

  const SearchSearchedItems({
    super.key,
    this.items,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (controller) {
      print('keupdate ${controller.dataObj?.message}');
      return StateHandleWidget(
        loadingEnabled: controller.isShimmering,
        emptySubtitle: 'empty subtitle',
        errorEnabled: controller.isError,
        errorTitle: 'error title',
        onRetryPressed: () {
          controller.refreshPage();
        },
        body: ListView.builder(
          shrinkWrap: true,
          controller: ScrollController(),
          itemCount: controller.dataObj?.data.length ?? 0,
          itemBuilder: (ctx, i) {
            if (items != null) {
              return items!(ctx, i);
            }

            final data = controller.dataObj!.data[i];

            return SearchSearchedItem(data: data);
          },
        ),
      );
    });
  }
}
