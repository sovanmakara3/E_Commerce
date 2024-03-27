import 'package:e_commerce/data/response/status.dart';
import 'package:e_commerce/views/home/skeletons/product_skeleton.dart';
// import 'package:e_commerce/views/home/skeletons/product_skeleton.dart';
import 'package:e_commerce/views/home/viewmodels/products_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../constants/sizes.dart';
import '../category_homescreen/category.dart';
import '../layouts/grid_layout.dart';
import '../most_popular/mostpopular_screen.dart';
import '../products/product_card_vertical.dart';
import '../promotion_slide/promotion_slider.dart';
import '../special_offer/special_offer_screen.dart';

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

  final _productViewModel = ProductViewModel();

  @override
  void initState() {
    super.initState();
    _productViewModel.getAllProduct();
  }

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
        ChangeNotifierProvider(
          create: (context) => _productViewModel,
          child: Consumer<ProductViewModel>(
            builder: (context, productViewModel, _) {
              switch (productViewModel.response.status!) {
                case Status.LOADING:
                  return MyGridLayout(
                    itemCount: 20,
                    itemBuilder: (context, index) =>
                        const ProductCardSkeleton(),
                  );
                case Status.COMPLETED:
                  return MyGridLayout(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      var product =
                          productViewModel.response.data!.data![index];
                      return ProductCardVertical(product: product);
                    },
                  );
                case Status.ERROR:
                  return const Text('Error');
              }
            },
          ),
        ),
      ],
    );
  }
}
