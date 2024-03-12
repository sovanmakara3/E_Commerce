import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  CategoryScreen({
    super.key,
  });
  List<Items> categories = [
    Items(title: 'Clothes', imageUrl: 'assets/category_icons/t-shirt.png'),
    Items(title: 'Shoes', imageUrl: 'assets/category_icons/boot.png'),
    Items(title: 'Bags', imageUrl: 'assets/category_icons/handbag.png'),
    Items(
        title: 'Electronics',
        imageUrl: 'assets/category_icons/computer-screen.png'),
    Items(title: 'Watch', imageUrl: 'assets/category_icons/smartwatch.png'),
    Items(title: 'Jewelry', imageUrl: 'assets/category_icons/diamond.png'),
    Items(title: 'Kitchen', imageUrl: 'assets/category_icons/ladle.png'),
    Items(title: 'Toys', imageUrl: 'assets/category_icons/teddy-bear.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 235,
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 24),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(categories[index].imageUrl!),
              ),
              const SizedBox(height: 10),
              Text(
                categories[index].title!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Items {
  String? title;
  String? imageUrl;

  Items({this.title, this.imageUrl});
}
