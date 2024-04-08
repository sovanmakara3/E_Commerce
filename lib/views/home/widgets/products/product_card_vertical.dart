import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:e_commerce/constants/styles/shadows.dart';
import 'package:e_commerce/data/response/status.dart';
import 'package:e_commerce/views/home/model/product.dart';
import 'package:e_commerce/views/home/skeletons/product_detail_skeleton.dart';
import 'package:e_commerce/views/home/viewmodels/products_vm.dart';
import 'package:e_commerce/views/home/widgets/product_detail/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../../../../constants/sizes.dart';

class ProductCardVertical extends StatelessWidget {
  ProductCardVertical({super.key, this.product});

  final Datum? product;

  final ProductViewModel productViewModel = ProductViewModel();

  final domainUrl = 'https://cms.istad.co';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: const Duration(milliseconds: 300),
            child: ProductDetailScreen(products: product),
          ),
        );
      },
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        '$domainUrl${product?.attributes?.thumbnail?.data?.attributes?.url}',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text(
                              "No Image for this product",
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  /// -- Favorite Icons Button
                  Positioned(
                    top: 5,
                    right: 5,
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

            // details
            Padding(
              padding: const EdgeInsets.only(left: Sized.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${product!.attributes!.title}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  /// Rating star and product qty
                  const SizedBox(height: Sized.spaceBtwItems / 2),
                  Row(
                    children: [
                      // Rating star
                      RatingBarIndicator(
                        rating: 5 / 10,
                        itemBuilder: (context, index) => const Icon(
                          Iconsax.star1,
                          color: Colors.black,
                        ),
                        itemCount: 1,
                        itemSize: 26,
                      ),
                      const SizedBox(width: Sized.xs),
                      Text('${product!.attributes!.rating}'),

                      /// Produts Qty
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: MyColors.softGrey,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '${product?.attributes?.quantity ?? '0'} in stock',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Sized.xs),
                  // Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${product!.attributes!.price!}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      /// More Button
                      InkWell(
                        splashColor: MyColors.grey,
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(Iconsax.more),
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
