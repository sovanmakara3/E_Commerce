import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../constants/sizes.dart';
import '../../../constants/text/label_and_seeall.dart';
import '../widgets/product_detail/widgets/class/product_size.dart';
import '../widgets/product_detail/widgets/class/quantity_helper.dart';

class ProductDetailSkeleton extends StatelessWidget {
  const ProductDetailSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 10,
                    child: Container(
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Iconsax.arrow_left_2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.more,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Sized.defaultSpace,
                right: Sized.defaultSpace,
                left: Sized.defaultSpace,
                bottom: Sized.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // - Price, Title, Stack and brand
                  // TitleAndPrice(),
                  const Row(
                    children: [
                      Text(''),

                      Spacer(),
                      Text(''),
                      SizedBox(width: Sized.sm),
                      // price
                      Text(
                        '',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.19,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(6),
                        child: const Text(
                          '9,275 sold',
                        ),
                      ),
                      const SizedBox(width: Sized.md),
                      const Row(
                        children: [
                          Icon(Iconsax.star5),
                          SizedBox(width: Sized.spaceBtwItems / 2),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '',
                                ),
                                TextSpan(text: ' (199 reviews)'),
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
                  ),

                  const Divider(),
                  const SizedBox(height: Sized.sm),

                  // - Description
                  // Description(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                      ),
                      SizedBox(height: Sized.sm),
                      ReadMoreText(
                        '',
                        trimLines: 2,
                        trimCollapsedText: ' See more',
                        trimExpandedText: ' Less',
                        trimMode: TrimMode.Line,
                      ),
                    ],
                  ),
                  const SizedBox(height: Sized.spaceBtwItems),

                  // - Size
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Label Size
                      LabelAndSeeAll(),
                      SizedBox(height: Sized.spaceBtwItems / 2),

                      /// items of size
                      Wrap(
                        spacing: 8,
                        children: [
                          MyChoiceSize(
                            text: 'EU 34',
                            selected: false,
                          ),
                          MyChoiceSize(
                            text: 'EU 36',
                            selected: false,
                          ),
                          MyChoiceSize(
                            text: 'EU 38',
                            selected: false,
                          ),
                          MyChoiceSize(
                            text: 'EU 40',
                            selected: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: Sized.spaceBtwItems),

                  // - Product Quantity
                  // const ProductQuantity(),
                  const Row(
                    children: [
                      Text(
                        'Quantity',
                      ),
                      SizedBox(width: Sized.spaceBtwItems),
                      MyCirCularIcon(
                        icon: Iconsax.minus,
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: Sized.spaceBtwItems),
                      Text(
                        '',
                      ),
                      SizedBox(width: Sized.spaceBtwItems),
                      MyCirCularIcon(
                        icon: Iconsax.add,
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        // bottomNavigationBar: const BuyAndAddToCart(),
        bottomNavigationBar: Padding(
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
                    Text(''),
                  ],
                ),
                const SizedBox(width: Sized.defaultSpace),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 10,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        fixedSize: const Size(150, 60)),
                    label: const Text('Add to Cart'),
                    icon: const Icon(
                      Iconsax.bag_25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
