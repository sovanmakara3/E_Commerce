import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../home/widgets/layouts/grid_layout.dart';
import '../home/widgets/products/product_card_vertical.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 16),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Iconsax.arrow_left,
          ),
        ),
        title: const Text(
          'My Wishlist',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 16),
            onPressed: () {},
            icon: const Icon(
              Iconsax.search_normal_1,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Tabbar Vertical

            // Product Card Vertical
            MyGridLayout(
              itemCount: 8,
              itemBuilder: (_, index) => ProductCardVertical(),
            ),
          ],
        ),
      ),
    );
  }
}
