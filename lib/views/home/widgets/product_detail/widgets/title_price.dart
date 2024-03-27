import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Men slant (White)',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        Spacer(),
        Text('Price'),
        SizedBox(width: Sized.sm),
        // price
        Text(
          '\$275',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
