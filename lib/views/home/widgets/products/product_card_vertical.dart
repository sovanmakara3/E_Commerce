import 'package:e_commerce/constants/ColorConstants.dart';
import 'package:e_commerce/constants/styles/shadows.dart';
import 'package:e_commerce/constants/text/product_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/sizes.dart';
import 'product_price.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
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
                  /// -- Thubnail Image
                  Image.asset(
                    'assets/productImage/AirJordan.png',
                  ),

                  /// -- Sale Tag
                  // Positioned(
                  //   top: 12,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(8),
                  //       color: Colors.yellow.withOpacity(0.8),
                  //     ),
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: Sized.sm, vertical: Sized.xs),
                  //     child: const Text(
                  //       '25%',
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  /// -- Favorite Icons Button
                  Positioned(
                    right: 3,
                    child: Container(
                      width: Sized.iconMd * 1.3,
                      height: Sized.iconMd * 1.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black,
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.heart,
                          color: Colors.white,
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
                  const MyProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: Sized.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: Sized.xs),
                      const Icon(
                        Iconsax.verify5,
                        size: Sized.iconXs,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: Sized.spaceBtwItems),
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.19,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MyColors.softGrey,
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(6),
                          child: Text(
                            '6,937 sold',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      const MyProductPriceText(price: '35.5'),

                      // Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Sized.cardRadiusMd),
                            bottomRight: Radius.circular(
                              Sized.productImageRadius,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          width: Sized.iconLg * 1.2,
                          height: Sized.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
