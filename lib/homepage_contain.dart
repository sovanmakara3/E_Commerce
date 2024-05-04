import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'views/cart/cart_screen.dart';
import 'views/profile/profile_screen.dart';
import 'views/add_products/add_product_screen.dart';
import 'home_screen.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const CartScreen(),
    AddProductScreen(
      isFromUpdate: false,
    ),
    // const OrderScreen(),
    const ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.home_2),
            title: const Text("Home"),
            selectedColor: Colors.black,
            activeIcon: const Icon(Iconsax.home_25),
          ),

          /// Cart
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.shopping_bag),
            title: const Text("Cart"),
            selectedColor: Colors.black,
            activeIcon: const Icon(Iconsax.shopping_bag5),
          ),

          /// Add Product
          SalomonBottomBarItem(
            unselectedColor: Colors.black,
            icon: const Icon(Iconsax.add_square),
            title: const Text("Add new"),
            selectedColor: Colors.black,
            activeIcon: const Icon(Iconsax.add_square5),
          ),

          /// Orders
          // SalomonBottomBarItem(
          //   icon: const Icon(Iconsax.shopping_cart),
          //   title: const Text("Orders"),
          //   selectedColor: Colors.black,
          //   activeIcon: const Icon(Iconsax.shopping_cart5),
          // ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.profile_circle),
            title: const Text("Profile"),
            selectedColor: Colors.black,
            activeIcon: const Icon(Iconsax.profile_circle5),
          ),
        ],
      ),
    );
  }
}
