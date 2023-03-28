import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/real_estate/detail/components/real_estate_information/widgets/real_estate_detail_field.dart';
import 'package:real_estate_mobile_app/features/settings/components/user_info/user_info_controller.dart';
import 'package:real_estate_mobile_app/utils/widgets/card_container.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: GetBuilder<UserInfoController>(builder: (controller) {
        final data = controller.dataObj!;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CardContainer(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RealEstateDetailField(
                  field: 'id',
                  value: data.id!,
                ),
                RealEstateDetailField(
                  field: 'organizationName',
                  value: data.organizationName!,
                ),
                RealEstateDetailField(
                  field: 'msp',
                  value: data.msp!,
                ),
                RealEstateDetailField(
                  field: 'name',
                  value: data.name!,
                ),
                RealEstateDetailField(
                  field: 'email',
                  value: data.email!,
                ),
                RealEstateDetailField(
                  field: 'npwpNumber',
                  value: data.npwpNumber!,
                ),
                RealEstateDetailField(
                  field: 'phoneNumber',
                  value: data.phoneNumber!,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
