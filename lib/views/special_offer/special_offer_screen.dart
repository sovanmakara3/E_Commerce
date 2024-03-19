import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SpecialOfferScreen extends StatelessWidget {
  const SpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 16),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Iconsax.arrow_left,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Special Offers',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 16),
            onPressed: () {},
            icon: const Icon(
              Iconsax.more_circle,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
