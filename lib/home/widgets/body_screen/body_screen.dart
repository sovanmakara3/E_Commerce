import 'package:e_commerce/home/widgets/products/product_card_vertical.dart';
import 'package:flutter/material.dart';
import '../category_homescreen/category.dart';
import '../layouts/grid_layout.dart';
import '../promotion_slide/promotion_slider.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  List<dynamic> image = [
    'assets/banners/black friday.jpg',
    'assets/banners/discount.jpg',
    'assets/banners/happygirl.jpg',
    'assets/banners/redShoes.jpg',
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
              // style: GoogleFonts.outfit(
              //   fontWeight: FontWeight.w600,
              //   fontSize: 22,
              //   letterSpacing: 0,
              // ),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                letterSpacing: 0,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See All',
                // style: GoogleFonts.outfit(
                //   color: Colors.black,
                //   fontSize: 16,
                //   fontWeight: FontWeight.w600,
                // ),
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
        const SizedBox(height: 12),
        BannerSlider(images: image),
        CategoryScreen(),

        // Label Most Popular
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Most Popular',
              // style: GoogleFonts.outfit(
              //   fontWeight: FontWeight.w600,
              //   fontSize: 22,
              //   letterSpacing: 0,
              // ),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                letterSpacing: 0,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See All',
                // style: GoogleFonts.outfit(
                //   color: Colors.black,
                //   fontSize: 16,
                //   fontWeight: FontWeight.w600,
                // ),
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
        MyGridLayout(
          itemCount: 8,
          itemBuilder: (_, index) => const ProductCardVertical(),
        ),
      ],
    );
  }
}
