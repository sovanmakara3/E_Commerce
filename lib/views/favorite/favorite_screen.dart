import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../data/response/status.dart';
import '../home/skeletons/product_skeleton.dart';
import '../home/viewmodels/products_vm.dart';
import '../home/widgets/layouts/grid_layout.dart';
import '../home/widgets/products/product_card_vertical.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  var _productViewModel = ProductViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _productViewModel.getAllProduct();
  }

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
            ChangeNotifierProvider(
              create: (context) => _productViewModel,
              child: Consumer<ProductViewModel>(
                builder: (context, productViewModel, _) {
                  switch (productViewModel.response.status!) {
                    case Status.LOADING:
                      return MyGridLayout(
                        itemCount: 10,
                        itemBuilder: (context, index) =>
                            const ProductCardSkeleton(),
                      );
                    case Status.COMPLETED:
                      return MyGridLayout(
                        itemCount: 10,
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
        ),
      ),
    );
  }
}
