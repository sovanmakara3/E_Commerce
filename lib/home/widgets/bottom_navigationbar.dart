import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigationBars extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NavigationBars({
    super.key,
  });

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      unselectedItemColor: Colors.grey,
      currentIndex: _currentIndex,
      onTap: (screens) {
        setState(() {
          _currentIndex = screens;
        });
      },
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
    );
  }
}
