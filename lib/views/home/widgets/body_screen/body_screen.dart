import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../../most_popular/mostpopular_screen.dart';
import '../../../special_offer/special_offer_screen.dart';
import '../category_homescreen/category.dart';
import '../layouts/grid_layout.dart';
import '../products/product_card_vertical.dart';
import '../promotion_slide/promotion_slider.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  List<dynamic> image = [
    'assets/banners/redShoes.jpg',
    'assets/banners/black friday.jpg',
    'assets/banners/discount.jpg',
    'assets/banners/happygirl.jpg',
    'assets/banners/shoes.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label Special Offers
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Special Offers',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                letterSpacing: 0,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpecialOfferScreen()));
              },
              child: const Text(
                'See All',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),

        // Slide banner
        const SizedBox(height: Sized.spaceBtwItems),
        BannerSlider(images: image),
        CategoryScreen(),

        // Label Most Popular
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Most Popular',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                letterSpacing: 0,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostPopularScreen()));
              },
              child: const Text(
                'See All',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),

        // Product Card Vertical
        const SizedBox(height: Sized.spaceBtwItems),
        MyGridLayout(
          itemCount: 8,
          itemBuilder: (_, index) => const ProductCardVertical(),
        ),
      ],
    );
  }
}
