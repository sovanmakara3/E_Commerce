import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../constants/sizes.dart';

class ProductCardSkeleton extends StatelessWidget {
  const ProductCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            // Thumbnail, wishlist, button, discount tag
            Container(
              width: double.infinity,
              height: 180,
              padding: const EdgeInsets.all(Sized.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade100,
              ),
              child: Stack(
                children: [
                  /// -- Favorite Icons Button
                  Positioned(
                    right: 3,
                    child: Container(
                      width: Sized.iconMd * 1.3,
                      height: Sized.iconMd * 1.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.heart,
                          size: Sized.iconSm,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: Sized.spaceBtwItems / 2),

            // detials
            Padding(
              padding: const EdgeInsets.only(left: Sized.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Green Nike Air Shoes',
                  ),
                  const SizedBox(height: Sized.spaceBtwItems / 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingBarIndicator(
                        itemBuilder: (context, index) => const Icon(
                          Iconsax.star1,
                        ),
                        itemCount: 1,
                        itemSize: 26,
                      ),
                      const SizedBox(width: Sized.xs),
                      const Text('10.0'),
                      const SizedBox(width: Sized.spaceBtwItems),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.19,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('sold'),
                      ),
                    ],
                  ),
                  // Price
                  const Text('35.5'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
