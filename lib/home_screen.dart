import 'package:flutter/material.dart';

import 'views/home/widgets/appbar/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: AppBars(),
    );
  }
}
