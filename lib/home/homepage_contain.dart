import 'package:e_commerce/cart/cart_screen.dart';
import 'package:e_commerce/home/home_screen.dart';
import 'package:e_commerce/orders/order_screen.dart';
import 'package:e_commerce/profile/profile_screen.dart';
import 'package:e_commerce/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
    const OrderScreen(),
    const WalletScreen(),
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

          /// Orders
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.shopping_cart),
            title: const Text("Orders"),
            selectedColor: Colors.black,
            activeIcon: const Icon(Iconsax.shopping_cart5),
          ),

          /// Wallet
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.empty_wallet),
            title: const Text("Wallet"),
            selectedColor: Colors.black,
            activeIcon: const Icon(Iconsax.empty_wallet5),
          ),

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
