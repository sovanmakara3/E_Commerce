import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text/label_and_seeall.dart';
import 'class/product_size.dart';

class SizeDetail extends StatelessWidget {
  const SizeDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Label Size
        const LabelAndSeeAll(),
        const SizedBox(height: Sized.spaceBtwItems / 2),

        /// items of size
        Wrap(
          spacing: 8,
          children: [
            MyChoiceSize(text: 'EU 34', selected: true, onSelected: (value) {}),
            MyChoiceSize(
                text: 'EU 36', selected: false, onSelected: (value) {}),
            MyChoiceSize(
                text: 'EU 38', selected: false, onSelected: (value) {}),
            MyChoiceSize(
                text: 'EU 40', selected: false, onSelected: (value) {}),
          ],
        ),
      ],
    );
  }
}
