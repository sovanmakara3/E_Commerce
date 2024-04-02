import 'package:e_commerce/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BuyAndAddToCart extends StatelessWidget {
  const BuyAndAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Sized.defaultSpace,
        right: Sized.defaultSpace,
        top: 8,
        bottom: Sized.defaultSpace,
      ),
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Total price'),
                Text(
                  '\$275.00',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(width: Sized.defaultSpace),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    elevation: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    fixedSize: const Size(150, 60)),
                label: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                icon: const Icon(
                  Iconsax.bag_25,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
