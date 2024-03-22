import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:e_commerce/constants/styles/shadows.dart';
// import 'package:e_commerce/constants/text/product_title_text.dart';
import 'package:e_commerce/views/home/model/product.dart';
import 'package:e_commerce/views/home/viewmodels/products_vm.dart';
import 'package:e_commerce/views/home/widgets/products/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../constants/sizes.dart';
// import 'product_price.dart';

// ignore: must_be_immutable
// class ProductCardVertical extends StatelessWidget {
//   ProductCardVertical({this.product});

//   Datum? product;
//   var productViewModel = ProductViewModel();

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           PageTransition(
//             type: PageTransitionType.rightToLeft,
//             duration: const Duration(milliseconds: 300),
//             child: const ProductDetailScreen(),
//           ),
//         );
//       },
//       child: Container(
//         width: 180,
//         padding: const EdgeInsets.all(1),
//         decoration: BoxDecoration(
//           boxShadow: [ShadowStyle.verticalProductShadow],
//           borderRadius: BorderRadius.circular(15),
//           color: Colors.white,
//         ),
//         child: Column(
//           children: [
//             // Thumbnail, wishlist, button, discount tag
//             Container(
//               width: double.infinity,
//               height: 180,
//               padding: const EdgeInsets.all(Sized.sm),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Colors.grey.shade100,
//               ),
//               child: Stack(
//                 children: [
//                   /// -- Thubnail Image
//                   Image.network(
//                     'https://cms.istad.co${product!.attributes!.thumbnail!.data!.attribute!.url!}',
//                   ),

//                   /// -- Favorite Icons Button
//                   Positioned(
//                     right: 3,
//                     child: Container(
//                       width: Sized.iconMd * 1.3,
//                       height: Sized.iconMd * 1.3,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(100),
//                         color: Colors.black,
//                       ),
//                       alignment: Alignment.center,
//                       child: IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Iconsax.heart,
//                           color: Colors.white,
//                           size: Sized.iconSm,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: Sized.spaceBtwItems / 2),

//             // detials
//             Padding(
//               padding: const EdgeInsets.only(left: Sized.sm),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // MyProductTitleText(
//                   //   title: '${product!.attributes!.title.toString()}',
//                   //   smallSize: true,
//                   // ),
//                   Text(product!.attributes!.title!),
//                   const SizedBox(height: Sized.spaceBtwItems / 2),
//                   Row(
//                     children: [
//                       Text(
//                         'Nike',
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 1,
//                         style: Theme.of(context).textTheme.labelMedium,
//                       ),
//                       const SizedBox(width: Sized.xs),
//                       const Icon(
//                         Iconsax.verify5,
//                         size: Sized.iconXs,
//                         color: Colors.blue,
//                       ),
//                       const SizedBox(width: Sized.spaceBtwItems),
//                       Flexible(
//                         child: Container(
//                           width: MediaQuery.of(context).size.width * 0.19,
//                           height: 30,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: MyColors.softGrey,
//                           ),
//                           alignment: Alignment.center,
//                           padding: const EdgeInsets.all(6),
//                           child: Text(
//                             '${product?.attributes?.quantity.toString()}sold',
//                             overflow: TextOverflow.ellipsis,
//                             maxLines: 1,
//                             style: Theme.of(context).textTheme.labelMedium,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   // Price
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Price
//                       MyProductPriceText(
//                         price: '${product!.attributes!.price!} \$',
//                       ),

//                       // Add to Cart Button
//                       Container(
//                         decoration: const BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(Sized.cardRadiusMd),
//                             bottomRight: Radius.circular(
//                               Sized.productImageRadius,
//                             ),
//                           ),
//                         ),
//                         child: const SizedBox(
//                           width: Sized.iconLg * 1.2,
//                           height: Sized.iconLg * 1.2,
//                           child: Center(
//                             child: Icon(
//                               Iconsax.add,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProductCardVertical extends StatelessWidget {
  ProductCardVertical({this.product});

  final Datum? product;
  final ProductViewModel productViewModel = ProductViewModel();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: const Duration(milliseconds: 300),
            child: const ProductDetailScreen(),
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
              // padding: const EdgeInsets.all(Sized.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade100,
              ),
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://cms.istad.co${product!.attributes!.thumbnail!.data!.attributes!.url}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

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

            // details
            Padding(
              padding: const EdgeInsets.only(left: Sized.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${product!.attributes!.title}',
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
                            '${product!.attributes!.quantity} sold',
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
                      Text(
                        '${product!.attributes!.price} \$',
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
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
