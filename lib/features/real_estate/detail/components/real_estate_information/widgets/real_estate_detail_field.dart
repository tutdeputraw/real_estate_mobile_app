import 'package:flutter/material.dart';

class RealEstateDetailField extends StatelessWidget {
  final String field;
  final String value;

  const RealEstateDetailField({
    super.key,
    required this.field,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(field),
        Text(value),
      ],
    );
  }
}
