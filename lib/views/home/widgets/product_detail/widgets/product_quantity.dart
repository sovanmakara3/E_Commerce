import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../constants/colors/ColorConstants.dart';
import '../../../../../constants/sizes.dart';
import 'class/quantity_helper.dart';

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Quantity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(width: Sized.spaceBtwItems),
        const MyCirCularIcon(
          icon: Iconsax.minus,
          color: Colors.white,
          backgroundColor: MyColors.darkGrey,
          width: 40,
          height: 40,
        ),
        const SizedBox(width: Sized.spaceBtwItems),
        Text(
          '1',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: Sized.spaceBtwItems),
        const MyCirCularIcon(
          icon: Iconsax.add,
          color: Colors.white,
          backgroundColor: MyColors.black,
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}
