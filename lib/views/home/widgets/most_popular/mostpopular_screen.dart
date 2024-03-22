import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MostPopularScreen extends StatelessWidget {
  const MostPopularScreen({super.key});

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
          'Most Popular',
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
    );
  }
}
