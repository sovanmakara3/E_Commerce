import 'package:e_commerce/cart/cart_screen.dart';
import 'package:e_commerce/home/home_screen.dart';
import 'package:e_commerce/orders/order_screen.dart';
import 'package:e_commerce/profile/profile_screen.dart';
import 'package:e_commerce/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
      backgroundColor: Colors.grey.shade50,
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
            icon: Icon(MdiIcons.homeOutline),
            title: const Text("Home"),
            selectedColor: Colors.black,
            activeIcon: Icon(MdiIcons.home),
          ),

          /// Cart
          SalomonBottomBarItem(
            icon: Icon(MdiIcons.shoppingOutline),
            title: const Text("Cart"),
            selectedColor: Colors.black,
            activeIcon: Icon(MdiIcons.shopping),
          ),

          /// Orders
          SalomonBottomBarItem(
            icon: Icon(MdiIcons.cartOutline),
            title: const Text("Orders"),
            selectedColor: Colors.black,
            activeIcon: Icon(MdiIcons.cart),
          ),

          /// Wallet
          SalomonBottomBarItem(
            icon: Icon(MdiIcons.walletBifoldOutline),
            title: const Text("Wallet"),
            selectedColor: Colors.black,
            activeIcon: Icon(MdiIcons.walletBifold),
          ),

          /// Profile
          SalomonBottomBarItem(
              icon: Icon(MdiIcons.accountOutline),
              title: const Text("Profile"),
              selectedColor: Colors.black,
              activeIcon: Icon(MdiIcons.account)),
        ],
      ),
    );
  }
}
