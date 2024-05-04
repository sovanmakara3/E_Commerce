import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:e_commerce/constants/sizes.dart';
import 'package:e_commerce/constants/styles/shadows.dart';
import 'package:e_commerce/helper_functions/helper_function.dart';
import 'package:e_commerce/views/home/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'widgets/class/quantity_helper.dart';
import 'widgets/size_detail.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({super.key, required this.products});

  final Datum? products;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  double totalPrice = 0;
  int _quantity = 0;

  // void _incrementQty() {
  //   setState(() {
  //     _quantity++;
  //   });
  // }

  void _incrementQty() {
    setState(() {
      _quantity++;
      double price = double.parse(widget.products!.attributes!.price!);
      totalPrice = price * _quantity;
    });
  }

  void _decrementQty() {
    if (_quantity > 0) {
      setState(() {
        _quantity--;
        double price = double.parse(widget.products!.attributes!.price!);
        totalPrice = price * _quantity;
      });
    }
  }

  // void _decrementQty() {
  //   if (_quantity > 0) {
  //     setState(() {
  //       _quantity--;
  //     });
  //   }
  // }

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
                          'https://cms.istad.co${widget.products?.attributes?.thumbnail?.data?.attributes?.url}',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 10,
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.4),
                        ),
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
                    // TitleAndPrice(),
                    Row(
                      children: [
                        Text(
                          '${widget.products!.attributes!.title}',
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Spacer(),
                        const Text('Price'),
                        const SizedBox(width: Sized.sm),
                        // price
                        Text(
                          '\$ ${widget.products!.attributes!.price}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),

                    // - Rating and Share buttons
                    // const RatingAndShare(),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.19,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MyColors.softGrey,
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(6),
                          child: Text(
                            '9,275 sold',
                            overflow: TextOverflow.visible,
                            maxLines: 1,
                            softWrap: false,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                        const SizedBox(width: Sized.md),
                        Row(
                          children: [
                            const Icon(Iconsax.star5,
                                color: Colors.amber, size: 24),
                            const SizedBox(width: Sized.spaceBtwItems / 2),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          '${widget.products!.attributes!.rating}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium),
                                  const TextSpan(text: ' (199 reviews)'),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: Sized.sm),
                        ReadMoreText(
                          '${widget.products!.attributes!.description}',
                          trimLines: 2,
                          trimCollapsedText: ' See more',
                          trimExpandedText: ' Less',
                          trimMode: TrimMode.Line,
                          moreStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w800),
                          lessStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    const SizedBox(height: Sized.spaceBtwItems),

                    // - Size
                    const Wrap(
                      runSpacing: 16,
                      children: [
                        SizeDetail(size: "S"),
                        SizeDetail(size: "M"),
                        SizeDetail(size: "L"),
                        SizeDetail(size: "XL"),
                        SizeDetail(size: "XXL"),
                      ],
                    ),
                    const SizedBox(height: Sized.spaceBtwItems),

                    // - Product Quantity
                    // const ProductQuantity(),
                    Row(
                      children: [
                        const Text(
                          'Quantity',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: Sized.spaceBtwItems),
                        MyCirCularIcon(
                          onPressed: _decrementQty,
                          icon: Iconsax.minus,
                          color: Colors.white,
                          backgroundColor: MyColors.darkGrey,
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: Sized.spaceBtwItems),
                        Text(
                          '$_quantity',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(width: Sized.spaceBtwItems),
                        MyCirCularIcon(
                          onPressed: _incrementQty,
                          icon: Iconsax.add,
                          color: Colors.white,
                          backgroundColor: MyColors.black,
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
        ),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Total price'),
                  Text(
                    '\$${totalPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: Sized.defaultSpace),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      fixedSize: const Size(150, 60)),
                  label: const Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  icon: const Icon(
                    Iconsax.bag_25,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
