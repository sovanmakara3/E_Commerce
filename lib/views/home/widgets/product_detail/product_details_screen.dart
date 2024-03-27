import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:e_commerce/constants/sizes.dart';
import 'package:e_commerce/helper_functions/helper_function.dart';
import 'package:e_commerce/views/home/model/product.dart';
import 'package:e_commerce/views/home/widgets/product_detail/widgets/product_size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/rating_share.dart';
import 'widgets/title_price.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.products});

  final Datum? products;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: dark ? MyColors.darkGrey : MyColors.light,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.network(
                          'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Iconsax.arrow_left_2,
                          color: Colors.black,
                          size: 25,
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
                          color: Colors.black,
                          size: 25,
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
                    const TitleAndPrice(),

                    // - Rating and Share buttons
                    const RatingAndShare(),

                    const Divider(),
                    const SizedBox(height: Sized.sm),

                    // - Description
                    const Text(
                      'Description',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: Sized.sm),

                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consectetur tristique libero eu eleifend. Vivamus maximus facilisis mauris vitae pretium.',
                    ),
                    const SizedBox(height: Sized.spaceBtwItems),
                    // - Attribute
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Size',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('see all'),
                          ],
                        ),
                        const SizedBox(height: Sized.spaceBtwItems / 2),
                        Wrap(
                          spacing: 8,
                          children: [
                            MyChoiceSize(
                                text: 'EU 34',
                                selected: true,
                                onSelected: (value) {}),
                            MyChoiceSize(
                                text: 'EU 36',
                                selected: false,
                                onSelected: (value) {}),
                            MyChoiceSize(
                                text: 'EU 38',
                                selected: false,
                                onSelected: (value) {}),
                            MyChoiceSize(
                                text: 'EU 40',
                                selected: false,
                                onSelected: (value) {}),
                          ],
                        ),
                      ],
                    ),
                    // - Checkout button

                    // - Reviews
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
