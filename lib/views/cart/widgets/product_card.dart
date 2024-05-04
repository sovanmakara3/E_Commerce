import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/colors/ColorConstants.dart';
import '../../../constants/sizes.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        // top: 8,
        bottom: Sized.defaultSpace,
      ),
      child: Container(
        width: double.infinity,
        height: 140,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 130,
              height: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  'https://cdn.shopify.com/s/files/1/0584/9363/2674/products/TTS202S52612F22_TAUPE_1_1024x1024.jpg?v=1679561804',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: Sized.spaceBtwItems),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Essential T-shirt',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(width: Sized.spaceBtwItems),
                const Text(
                  'Size = M',
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  children: [
                    const Text(
                      '\$385.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: Sized.spaceBtwItems),
                    Container(
                      width: 110,
                      height: 35,
                      decoration: BoxDecoration(
                        color: MyColors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Iconsax.minus,
                              size: 16,
                              color: Colors.black,
                              applyTextScaling: true,
                            ),
                          ),
                          const Text(
                            '1',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Iconsax.add,
                              size: 16,
                              color: Colors.black,
                              applyTextScaling: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
