import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../constants/colors/ColorConstants.dart';
import '../../../../../constants/sizes.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.19,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: MyColors.softGrey,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(6),
          child: Text(
            '9,275 sold',
            overflow: TextOverflow.visible,
            maxLines: 1,
            softWrap: false,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        const SizedBox(width: Sized.md),
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: Sized.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
                      style: Theme.of(context).textTheme.bodyMedium),
                  const TextSpan(text: ' (199 reviews)'),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        // Share Button
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.send_2,
          ),
        ),
      ],
    );
  }
}
