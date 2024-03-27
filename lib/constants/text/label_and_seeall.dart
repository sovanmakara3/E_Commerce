import 'package:flutter/material.dart';

class LabelAndSeeAll extends StatelessWidget {
  const LabelAndSeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Size',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('see all'),
      ],
    );
  }
}
