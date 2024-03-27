import 'package:e_commerce/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/colors/ColorConstants.dart';

class BuyAndAddToCart extends StatelessWidget {
  const BuyAndAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      child: Row(
        children: [
          Text(
            'Total : \$25.22',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.grey,
                foregroundColor: Colors.black,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: const Text('Add to Cart'),
            ),
          ),
          const SizedBox(width: Sized.spaceBtwItems / 2),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: const Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}
