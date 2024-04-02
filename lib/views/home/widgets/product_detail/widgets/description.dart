import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../constants/sizes.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: Sized.sm),
        ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consectetur tristique libero eu eleifend. Vivamus maximus facilisis mauris vitae pretium. Contrary to popular belief, Lorem Ipsum is not simply random text.',
          trimLines: 2,
          trimCollapsedText: 'See more',
          trimExpandedText: 'Less',
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
